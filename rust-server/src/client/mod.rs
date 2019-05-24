#![allow(unused_extern_crates)]
extern crate tokio_core;
extern crate native_tls;
extern crate hyper_tls;
extern crate openssl;
extern crate mime;
extern crate chrono;
extern crate url;



use hyper;
use hyper::header::{Headers, ContentType};
use hyper::Uri;
use self::url::percent_encoding::{utf8_percent_encode, PATH_SEGMENT_ENCODE_SET, QUERY_ENCODE_SET};
use futures;
use futures::{Future, Stream};
use futures::{future, stream};
use self::tokio_core::reactor::Handle;
use std::borrow::Cow;
use std::io::{Read, Error, ErrorKind};
use std::error;
use std::fmt;
use std::path::Path;
use std::sync::Arc;
use std::str;
use std::str::FromStr;
use std::string::ToString;

use mimetypes;

use serde_json;


#[allow(unused_imports)]
use std::collections::{HashMap, BTreeMap};
#[allow(unused_imports)]
use swagger;

use swagger::{ApiError, XSpanId, XSpanIdString, Has, AuthData};

use {Api,
     GeocodingReverseSearchResponse,
     GeocodingSearchResponse,
     MapInfoResponse,
     RoutesResponse,
     SupportedLocationsResponse,
     TimeFilterResponse,
     TimeFilterFastResponse,
     TimeFilterPostcodeDistrictsResponse,
     TimeFilterPostcodeSectorsResponse,
     TimeFilterPostcodesResponse,
     TimeMapResponse
     };
use models;

define_encode_set! {
    /// This encode set is used for object IDs
    ///
    /// Aside from the special characters defined in the `PATH_SEGMENT_ENCODE_SET`,
    /// the vertical bar (|) is encoded.
    pub ID_ENCODE_SET = [PATH_SEGMENT_ENCODE_SET] | {'|'}
}

/// Convert input into a base path, e.g. "http://example:123". Also checks the scheme as it goes.
fn into_base_path(input: &str, correct_scheme: Option<&'static str>) -> Result<String, ClientInitError> {
    // First convert to Uri, since a base path is a subset of Uri.
    let uri = Uri::from_str(input)?;

    let scheme = uri.scheme().ok_or(ClientInitError::InvalidScheme)?;

    // Check the scheme if necessary
    if let Some(correct_scheme) = correct_scheme {
        if scheme != correct_scheme {
            return Err(ClientInitError::InvalidScheme);
        }
    }

    let host = uri.host().ok_or_else(|| ClientInitError::MissingHost)?;
    let port = uri.port().map(|x| format!(":{}", x)).unwrap_or_default();
    Ok(format!("{}://{}{}", scheme, host, port))
}

/// A client that implements the API by making HTTP calls out to a server.
pub struct Client<F> where
  F: Future<Item=hyper::Response, Error=hyper::Error> + 'static {
    client_service: Arc<Box<hyper::client::Service<Request=hyper::Request<hyper::Body>, Response=hyper::Response, Error=hyper::Error, Future=F>>>,
    base_path: String,
}

impl<F> fmt::Debug for Client<F> where
   F: Future<Item=hyper::Response, Error=hyper::Error>  + 'static {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "Client {{ base_path: {} }}", self.base_path)
    }
}

impl<F> Clone for Client<F> where
   F: Future<Item=hyper::Response, Error=hyper::Error>  + 'static {
    fn clone(&self) -> Self {
        Client {
            client_service: self.client_service.clone(),
            base_path: self.base_path.clone()
        }
    }
}

impl Client<hyper::client::FutureResponse> {

    /// Create an HTTP client.
    ///
    /// # Arguments
    /// * `handle` - tokio reactor handle to use for execution
    /// * `base_path` - base path of the client API, i.e. "www.my-api-implementation.com"
    pub fn try_new_http(handle: Handle, base_path: &str) -> Result<Client<hyper::client::FutureResponse>, ClientInitError> {
        let http_connector = swagger::http_connector();
        Self::try_new_with_connector::<hyper::client::HttpConnector>(
            handle,
            base_path,
            Some("http"),
            http_connector,
        )
    }

    /// Create a client with a TLS connection to the server.
    ///
    /// # Arguments
    /// * `handle` - tokio reactor handle to use for execution
    /// * `base_path` - base path of the client API, i.e. "www.my-api-implementation.com"
    /// * `ca_certificate` - Path to CA certificate used to authenticate the server
    pub fn try_new_https<CA>(
        handle: Handle,
        base_path: &str,
        ca_certificate: CA,
    ) -> Result<Client<hyper::client::FutureResponse>, ClientInitError>
    where
        CA: AsRef<Path>,
    {
        let https_connector = swagger::https_connector(ca_certificate);
        Self::try_new_with_connector::<hyper_tls::HttpsConnector<hyper::client::HttpConnector>>(
            handle,
            base_path,
            Some("https"),
            https_connector,
        )
    }

    /// Create a client with a mutually authenticated TLS connection to the server.
    ///
    /// # Arguments
    /// * `handle` - tokio reactor handle to use for execution
    /// * `base_path` - base path of the client API, i.e. "www.my-api-implementation.com"
    /// * `ca_certificate` - Path to CA certificate used to authenticate the server
    /// * `client_key` - Path to the client private key
    /// * `client_certificate` - Path to the client's public certificate associated with the private key
    pub fn try_new_https_mutual<CA, K, C>(
        handle: Handle,
        base_path: &str,
        ca_certificate: CA,
        client_key: K,
        client_certificate: C,
    ) -> Result<Client<hyper::client::FutureResponse>, ClientInitError>
    where
        CA: AsRef<Path>,
        K: AsRef<Path>,
        C: AsRef<Path>,
    {
        let https_connector =
            swagger::https_mutual_connector(ca_certificate, client_key, client_certificate);
        Self::try_new_with_connector::<hyper_tls::HttpsConnector<hyper::client::HttpConnector>>(
            handle,
            base_path,
            Some("https"),
            https_connector,
        )
    }

    /// Create a client with a custom implementation of hyper::client::Connect.
    ///
    /// Intended for use with custom implementations of connect for e.g. protocol logging
    /// or similar functionality which requires wrapping the transport layer. When wrapping a TCP connection,
    /// this function should be used in conjunction with
    /// `swagger::{http_connector, https_connector, https_mutual_connector}`.
    ///
    /// For ordinary tcp connections, prefer the use of `try_new_http`, `try_new_https`
    /// and `try_new_https_mutual`, to avoid introducing a dependency on the underlying transport layer.
    ///
    /// # Arguments
    ///
    /// * `handle` - tokio reactor handle to use for execution
    /// * `base_path` - base path of the client API, i.e. "www.my-api-implementation.com"
    /// * `protocol` - Which protocol to use when constructing the request url, e.g. `Some("http")`
    /// * `connector_fn` - Function which returns an implementation of `hyper::client::Connect`
    pub fn try_new_with_connector<C>(
        handle: Handle,
        base_path: &str,
        protocol: Option<&'static str>,
        connector_fn: Box<Fn(&Handle) -> C + Send + Sync>,
    ) -> Result<Client<hyper::client::FutureResponse>, ClientInitError>
    where
        C: hyper::client::Connect + hyper::client::Service,
    {
        let connector = connector_fn(&handle);
        let client_service = Box::new(hyper::Client::configure().connector(connector).build(
            &handle,
        ));

        Ok(Client {
            client_service: Arc::new(client_service),
            base_path: into_base_path(base_path, protocol)?,
        })
    }

    /// Constructor for creating a `Client` by passing in a pre-made `hyper` client.
    ///
    /// One should avoid relying on this function if possible, since it adds a dependency on the underlying transport
    /// implementation, which it would be better to abstract away. Therefore, using this function may lead to a loss of
    /// code generality, which may make it harder to move the application to a serverless environment, for example.
    ///
    /// The reason for this function's existence is to support legacy test code, which did mocking at the hyper layer.
    /// This is not a recommended way to write new tests. If other reasons are found for using this function, they
    /// should be mentioned here.
    #[deprecated(note="Use try_new_with_client_service instead")]
    pub fn try_new_with_hyper_client(
        hyper_client: Arc<Box<hyper::client::Service<Request=hyper::Request<hyper::Body>, Response=hyper::Response, Error=hyper::Error, Future=hyper::client::FutureResponse>>>,
        handle: Handle,
        base_path: &str
    ) -> Result<Client<hyper::client::FutureResponse>, ClientInitError>
    {
        Ok(Client {
            client_service: hyper_client,
            base_path: into_base_path(base_path, None)?,
        })
    }
}

impl<F> Client<F> where
    F: Future<Item=hyper::Response, Error=hyper::Error>  + 'static
{
    /// Constructor for creating a `Client` by passing in a pre-made `hyper` client Service.
    ///
    /// This allows adding custom wrappers around the underlying transport, for example for logging.
    pub fn try_new_with_client_service(client_service: Arc<Box<hyper::client::Service<Request=hyper::Request<hyper::Body>, Response=hyper::Response, Error=hyper::Error, Future=F>>>,
                                       handle: Handle,
                                       base_path: &str)
                                    -> Result<Client<F>, ClientInitError>
    {
        Ok(Client {
            client_service: client_service,
            base_path: into_base_path(base_path, None)?,
        })
    }
}

impl<F, C> Api<C> for Client<F> where
    F: Future<Item=hyper::Response, Error=hyper::Error>  + 'static,
    C: Has<XSpanIdString> + Has<Option<AuthData>>{

    fn geocoding_reverse_search(&self, param_focus_lat: f64, param_focus_lng: f64, param_within_country: Option<String>, context: &C) -> Box<Future<Item=GeocodingReverseSearchResponse, Error=ApiError>> {
        let mut uri = format!(
            "{}/v4/geocoding/reverse",
            self.base_path
        );

        let mut query_string = self::url::form_urlencoded::Serializer::new("".to_owned());
        query_string.append_pair("focus.lat", &param_focus_lat.to_string());
        query_string.append_pair("focus.lng", &param_focus_lng.to_string());

        if let Some(within_country) = param_within_country {
            query_string.append_pair("within.country", &within_country.to_string());
        }

        let query_string_str = query_string.finish();
        if !query_string_str.is_empty() {
            uri += "?";
            uri += &query_string_str;
        }

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);


        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        header! { (XApiKey, "X-Api-Key") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApiKey(api_key.to_string()));
            }
        }        header! { (XApplicationId, "X-Application-Id") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApplicationId(api_key.to_string()));
            }
        }

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseGeocoding>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            GeocodingReverseSearchResponse::MatchAQueryStringToGeographicCoordinates(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                0 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseError>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            GeocodingReverseSearchResponse::TheJsonBodyReturnedUponError(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn geocoding_search(&self, param_query: String, param_within_country: Option<String>, param_focus_lat: Option<f64>, param_focus_lng: Option<f64>, context: &C) -> Box<Future<Item=GeocodingSearchResponse, Error=ApiError>> {
        let mut uri = format!(
            "{}/v4/geocoding/search",
            self.base_path
        );

        let mut query_string = self::url::form_urlencoded::Serializer::new("".to_owned());
        query_string.append_pair("query", &param_query.to_string());

        if let Some(within_country) = param_within_country {
            query_string.append_pair("within.country", &within_country.to_string());
        }
        if let Some(focus_lat) = param_focus_lat {
            query_string.append_pair("focus.lat", &focus_lat.to_string());
        }
        if let Some(focus_lng) = param_focus_lng {
            query_string.append_pair("focus.lng", &focus_lng.to_string());
        }

        let query_string_str = query_string.finish();
        if !query_string_str.is_empty() {
            uri += "?";
            uri += &query_string_str;
        }

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);


        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        header! { (XApiKey, "X-Api-Key") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApiKey(api_key.to_string()));
            }
        }        header! { (XApplicationId, "X-Application-Id") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApplicationId(api_key.to_string()));
            }
        }

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseGeocoding>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            GeocodingSearchResponse::MatchAQueryStringToGeographicCoordinates(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                0 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseError>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            GeocodingSearchResponse::TheJsonBodyReturnedUponError(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn map_info(&self, context: &C) -> Box<Future<Item=MapInfoResponse, Error=ApiError>> {
        let mut uri = format!(
            "{}/v4/map-info",
            self.base_path
        );

        let mut query_string = self::url::form_urlencoded::Serializer::new("".to_owned());


        let query_string_str = query_string.finish();
        if !query_string_str.is_empty() {
            uri += "?";
            uri += &query_string_str;
        }

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Get, uri);


        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        header! { (XApiKey, "X-Api-Key") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApiKey(api_key.to_string()));
            }
        }        header! { (XApplicationId, "X-Application-Id") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApplicationId(api_key.to_string()));
            }
        }

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseMapInfo>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            MapInfoResponse::ReturnsInformationAboutCurrentlySupportedCountries(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                0 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseError>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            MapInfoResponse::TheJsonBodyReturnedUponError(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn routes(&self, param_request_routes: models::RequestRoutes, context: &C) -> Box<Future<Item=RoutesResponse, Error=ApiError>> {
        let mut uri = format!(
            "{}/v4/routes",
            self.base_path
        );

        let mut query_string = self::url::form_urlencoded::Serializer::new("".to_owned());


        let query_string_str = query_string.finish();
        if !query_string_str.is_empty() {
            uri += "?";
            uri += &query_string_str;
        }

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Post, uri);

        let body = serde_json::to_string(&param_request_routes).expect("impossible to fail to serialize");

        request.set_body(body);


        request.headers_mut().set(ContentType(mimetypes::requests::ROUTES.clone()));
        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        header! { (XApiKey, "X-Api-Key") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApiKey(api_key.to_string()));
            }
        }        header! { (XApplicationId, "X-Application-Id") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApplicationId(api_key.to_string()));
            }
        }

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseRoutes>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            RoutesResponse::ReturnsRoutingInformationBetweenSourceAndDestinations(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                0 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseError>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            RoutesResponse::TheJsonBodyReturnedUponError(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn supported_locations(&self, param_request_supported_locations: models::RequestSupportedLocations, context: &C) -> Box<Future<Item=SupportedLocationsResponse, Error=ApiError>> {
        let mut uri = format!(
            "{}/v4/supported-locations",
            self.base_path
        );

        let mut query_string = self::url::form_urlencoded::Serializer::new("".to_owned());


        let query_string_str = query_string.finish();
        if !query_string_str.is_empty() {
            uri += "?";
            uri += &query_string_str;
        }

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Post, uri);

        let body = serde_json::to_string(&param_request_supported_locations).expect("impossible to fail to serialize");

        request.set_body(body);


        request.headers_mut().set(ContentType(mimetypes::requests::SUPPORTED_LOCATIONS.clone()));
        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        header! { (XApiKey, "X-Api-Key") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApiKey(api_key.to_string()));
            }
        }        header! { (XApplicationId, "X-Application-Id") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApplicationId(api_key.to_string()));
            }
        }

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseSupportedLocations>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            SupportedLocationsResponse::FindOutWhatPointsAreSupportedByOurApi(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                0 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseError>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            SupportedLocationsResponse::TheJsonBodyReturnedUponError(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn time_filter(&self, param_request_time_filter: models::RequestTimeFilter, context: &C) -> Box<Future<Item=TimeFilterResponse, Error=ApiError>> {
        let mut uri = format!(
            "{}/v4/time-filter",
            self.base_path
        );

        let mut query_string = self::url::form_urlencoded::Serializer::new("".to_owned());


        let query_string_str = query_string.finish();
        if !query_string_str.is_empty() {
            uri += "?";
            uri += &query_string_str;
        }

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Post, uri);

        let body = serde_json::to_string(&param_request_time_filter).expect("impossible to fail to serialize");

        request.set_body(body);


        request.headers_mut().set(ContentType(mimetypes::requests::TIME_FILTER.clone()));
        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        header! { (XApiKey, "X-Api-Key") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApiKey(api_key.to_string()));
            }
        }        header! { (XApplicationId, "X-Application-Id") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApplicationId(api_key.to_string()));
            }
        }

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseTimeFilter>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            TimeFilterResponse::GivenOriginAndDestinationPointsFilterOutPointsThatCannotBeReachedWithinSpecifiedTimeLimit(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                0 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseError>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            TimeFilterResponse::TheJsonBodyReturnedUponError(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn time_filter_fast(&self, param_request_time_filter_fast: models::RequestTimeFilterFast, context: &C) -> Box<Future<Item=TimeFilterFastResponse, Error=ApiError>> {
        let mut uri = format!(
            "{}/v4/time-filter/fast",
            self.base_path
        );

        let mut query_string = self::url::form_urlencoded::Serializer::new("".to_owned());


        let query_string_str = query_string.finish();
        if !query_string_str.is_empty() {
            uri += "?";
            uri += &query_string_str;
        }

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Post, uri);

        let body = serde_json::to_string(&param_request_time_filter_fast).expect("impossible to fail to serialize");

        request.set_body(body);


        request.headers_mut().set(ContentType(mimetypes::requests::TIME_FILTER_FAST.clone()));
        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        header! { (XApiKey, "X-Api-Key") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApiKey(api_key.to_string()));
            }
        }        header! { (XApplicationId, "X-Application-Id") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApplicationId(api_key.to_string()));
            }
        }

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseTimeFilterFast>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            TimeFilterFastResponse::AVeryFastVersionOfTimeFilter(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                0 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseError>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            TimeFilterFastResponse::TheJsonBodyReturnedUponError(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn time_filter_postcode_districts(&self, param_request_time_filter_postcode_districts: models::RequestTimeFilterPostcodeDistricts, context: &C) -> Box<Future<Item=TimeFilterPostcodeDistrictsResponse, Error=ApiError>> {
        let mut uri = format!(
            "{}/v4/time-filter/postcode-districts",
            self.base_path
        );

        let mut query_string = self::url::form_urlencoded::Serializer::new("".to_owned());


        let query_string_str = query_string.finish();
        if !query_string_str.is_empty() {
            uri += "?";
            uri += &query_string_str;
        }

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Post, uri);

        let body = serde_json::to_string(&param_request_time_filter_postcode_districts).expect("impossible to fail to serialize");

        request.set_body(body);


        request.headers_mut().set(ContentType(mimetypes::requests::TIME_FILTER_POSTCODE_DISTRICTS.clone()));
        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        header! { (XApiKey, "X-Api-Key") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApiKey(api_key.to_string()));
            }
        }        header! { (XApplicationId, "X-Application-Id") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApplicationId(api_key.to_string()));
            }
        }

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseTimeFilterPostcodeDistricts>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            TimeFilterPostcodeDistrictsResponse::FindDistrictsThatHaveACertainCoverageFromOriginAndGetStatisticsAboutPostcodesWithinSuchDistricts(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                0 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseError>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            TimeFilterPostcodeDistrictsResponse::TheJsonBodyReturnedUponError(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn time_filter_postcode_sectors(&self, param_request_time_filter_postcode_sectors: models::RequestTimeFilterPostcodeSectors, context: &C) -> Box<Future<Item=TimeFilterPostcodeSectorsResponse, Error=ApiError>> {
        let mut uri = format!(
            "{}/v4/time-filter/postcode-sectors",
            self.base_path
        );

        let mut query_string = self::url::form_urlencoded::Serializer::new("".to_owned());


        let query_string_str = query_string.finish();
        if !query_string_str.is_empty() {
            uri += "?";
            uri += &query_string_str;
        }

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Post, uri);

        let body = serde_json::to_string(&param_request_time_filter_postcode_sectors).expect("impossible to fail to serialize");

        request.set_body(body);


        request.headers_mut().set(ContentType(mimetypes::requests::TIME_FILTER_POSTCODE_SECTORS.clone()));
        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        header! { (XApiKey, "X-Api-Key") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApiKey(api_key.to_string()));
            }
        }        header! { (XApplicationId, "X-Application-Id") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApplicationId(api_key.to_string()));
            }
        }

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseTimeFilterPostcodeSectors>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            TimeFilterPostcodeSectorsResponse::FindSectorsThatHaveACertainCoverageFromOriginAndGetStatisticsAboutPostcodesWithinSuchSectors(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                0 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseError>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            TimeFilterPostcodeSectorsResponse::TheJsonBodyReturnedUponError(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn time_filter_postcodes(&self, param_request_time_filter_postcodes: models::RequestTimeFilterPostcodes, context: &C) -> Box<Future<Item=TimeFilterPostcodesResponse, Error=ApiError>> {
        let mut uri = format!(
            "{}/v4/time-filter/postcodes",
            self.base_path
        );

        let mut query_string = self::url::form_urlencoded::Serializer::new("".to_owned());


        let query_string_str = query_string.finish();
        if !query_string_str.is_empty() {
            uri += "?";
            uri += &query_string_str;
        }

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Post, uri);

        let body = serde_json::to_string(&param_request_time_filter_postcodes).expect("impossible to fail to serialize");

        request.set_body(body);


        request.headers_mut().set(ContentType(mimetypes::requests::TIME_FILTER_POSTCODES.clone()));
        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        header! { (XApiKey, "X-Api-Key") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApiKey(api_key.to_string()));
            }
        }        header! { (XApplicationId, "X-Application-Id") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApplicationId(api_key.to_string()));
            }
        }

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseTimeFilterPostcodes>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            TimeFilterPostcodesResponse::FindReachablePostcodesFromOriginAndGetStatisticsAboutSuchPostcodes(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                0 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseError>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            TimeFilterPostcodesResponse::TheJsonBodyReturnedUponError(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

    fn time_map(&self, param_request_time_map: models::RequestTimeMap, context: &C) -> Box<Future<Item=TimeMapResponse, Error=ApiError>> {
        let mut uri = format!(
            "{}/v4/time-map",
            self.base_path
        );

        let mut query_string = self::url::form_urlencoded::Serializer::new("".to_owned());


        let query_string_str = query_string.finish();
        if !query_string_str.is_empty() {
            uri += "?";
            uri += &query_string_str;
        }

        let uri = match Uri::from_str(&uri) {
            Ok(uri) => uri,
            Err(err) => return Box::new(futures::done(Err(ApiError(format!("Unable to build URI: {}", err))))),
        };

        let mut request = hyper::Request::new(hyper::Method::Post, uri);

        let body = serde_json::to_string(&param_request_time_map).expect("impossible to fail to serialize");

        request.set_body(body);


        request.headers_mut().set(ContentType(mimetypes::requests::TIME_MAP.clone()));
        request.headers_mut().set(XSpanId((context as &Has<XSpanIdString>).get().0.clone()));
        header! { (XApiKey, "X-Api-Key") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApiKey(api_key.to_string()));
            }
        }        header! { (XApplicationId, "X-Application-Id") => [String] }
        if let Some(auth_data) = (context as &Has<Option<AuthData>>).get().as_ref() {
            if let AuthData::ApiKey(ref api_key) = *auth_data {
                request.headers_mut().set(XApplicationId(api_key.to_string()));
            }
        }

        Box::new(self.client_service.call(request)
                             .map_err(|e| ApiError(format!("No response received: {}", e)))
                             .and_then(|mut response| {
            match response.status().as_u16() {
                200 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseTimeMap>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            TimeMapResponse::GivenOriginCoordinates(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                0 => {
                    let body = response.body();
                    Box::new(
                        body
                        .concat2()
                        .map_err(|e| ApiError(format!("Failed to read response: {}", e)))
                        .and_then(|body|

                        str::from_utf8(&body)
                                             .map_err(|e| ApiError(format!("Response was not valid UTF8: {}", e)))
                                             .and_then(|body|

                                                 serde_json::from_str::<models::ResponseError>(body)
                                                     .map_err(|e| e.into())
                                             )

                                 )
                        .map(move |body| {
                            TimeMapResponse::TheJsonBodyReturnedUponError(body)
                        })
                    ) as Box<Future<Item=_, Error=_>>
                },
                code => {
                    let headers = response.headers().clone();
                    Box::new(response.body()
                            .take(100)
                            .concat2()
                            .then(move |body|
                                future::err(ApiError(format!("Unexpected response code {}:\n{:?}\n\n{}",
                                    code,
                                    headers,
                                    match body {
                                        Ok(ref body) => match str::from_utf8(body) {
                                            Ok(body) => Cow::from(body),
                                            Err(e) => Cow::from(format!("<Body was not UTF8: {:?}>", e)),
                                        },
                                        Err(e) => Cow::from(format!("<Failed to read body: {}>", e)),
                                    })))
                            )
                    ) as Box<Future<Item=_, Error=_>>
                }
            }
        }))

    }

}

#[derive(Debug)]
pub enum ClientInitError {
    InvalidScheme,
    InvalidUri(hyper::error::UriError),
    MissingHost,
    SslError(openssl::error::ErrorStack)
}

impl From<hyper::error::UriError> for ClientInitError {
    fn from(err: hyper::error::UriError) -> ClientInitError {
        ClientInitError::InvalidUri(err)
    }
}

impl From<openssl::error::ErrorStack> for ClientInitError {
    fn from(err: openssl::error::ErrorStack) -> ClientInitError {
        ClientInitError::SslError(err)
    }
}

impl fmt::Display for ClientInitError {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        (self as &fmt::Debug).fmt(f)
    }
}

impl error::Error for ClientInitError {
    fn description(&self) -> &str {
        "Failed to produce a hyper client."
    }
}
