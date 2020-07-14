use futures::{future, future::BoxFuture, Stream, stream, future::FutureExt, stream::TryStreamExt};
use hyper::{Request, Response, StatusCode, Body, HeaderMap};
use hyper::header::{HeaderName, HeaderValue, CONTENT_TYPE};
use log::warn;
#[allow(unused_imports)]
use std::convert::{TryFrom, TryInto};
use std::error::Error;
use std::future::Future;
use std::marker::PhantomData;
use std::task::{Context, Poll};
use swagger::{ApiError, BodyExt, Has, RequestParser, XSpanIdString};
pub use swagger::auth::Authorization;
use swagger::auth::Scopes;
use url::form_urlencoded;

#[allow(unused_imports)]
use crate::models;
use crate::header;

pub use crate::context;

type ServiceFuture = BoxFuture<'static, Result<Response<Body>, crate::ServiceError>>;

use crate::{Api,
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

mod paths {
    use lazy_static::lazy_static;

    lazy_static! {
        pub static ref GLOBAL_REGEX_SET: regex::RegexSet = regex::RegexSet::new(vec![
            r"^/v4/geocoding/reverse$",
            r"^/v4/geocoding/search$",
            r"^/v4/map-info$",
            r"^/v4/routes$",
            r"^/v4/supported-locations$",
            r"^/v4/time-filter$",
            r"^/v4/time-filter/fast$",
            r"^/v4/time-filter/postcode-districts$",
            r"^/v4/time-filter/postcode-sectors$",
            r"^/v4/time-filter/postcodes$",
            r"^/v4/time-map$"
        ])
        .expect("Unable to create global regex set");
    }
    pub(crate) static ID_V4_GEOCODING_REVERSE: usize = 0;
    pub(crate) static ID_V4_GEOCODING_SEARCH: usize = 1;
    pub(crate) static ID_V4_MAP_INFO: usize = 2;
    pub(crate) static ID_V4_ROUTES: usize = 3;
    pub(crate) static ID_V4_SUPPORTED_LOCATIONS: usize = 4;
    pub(crate) static ID_V4_TIME_FILTER: usize = 5;
    pub(crate) static ID_V4_TIME_FILTER_FAST: usize = 6;
    pub(crate) static ID_V4_TIME_FILTER_POSTCODE_DISTRICTS: usize = 7;
    pub(crate) static ID_V4_TIME_FILTER_POSTCODE_SECTORS: usize = 8;
    pub(crate) static ID_V4_TIME_FILTER_POSTCODES: usize = 9;
    pub(crate) static ID_V4_TIME_MAP: usize = 10;
}

pub struct MakeService<T, C> where
    T: Api<C> + Clone + Send + 'static,
    C: Has<XSpanIdString> + Has<Option<Authorization>> + Send + Sync + 'static
{
    api_impl: T,
    marker: PhantomData<C>,
}

impl<T, C> MakeService<T, C> where
    T: Api<C> + Clone + Send + 'static,
    C: Has<XSpanIdString> + Has<Option<Authorization>> + Send + Sync + 'static
{
    pub fn new(api_impl: T) -> Self {
        MakeService {
            api_impl,
            marker: PhantomData
        }
    }
}

impl<T, C, Target> hyper::service::Service<Target> for MakeService<T, C> where
    T: Api<C> + Clone + Send + 'static,
    C: Has<XSpanIdString> + Has<Option<Authorization>> + Send + Sync + 'static
{
    type Response = Service<T, C>;
    type Error = crate::ServiceError;
    type Future = future::Ready<Result<Self::Response, Self::Error>>;

    fn poll_ready(&mut self, cx: &mut Context<'_>) -> Poll<Result<(), Self::Error>> {
        Poll::Ready(Ok(()))
    }

    fn call(&mut self, target: Target) -> Self::Future {
        futures::future::ok(Service::new(
            self.api_impl.clone(),
        ))
    }
}

fn method_not_allowed() -> Result<Response<Body>, crate::ServiceError> {
    Ok(
        Response::builder().status(StatusCode::METHOD_NOT_ALLOWED)
            .body(Body::empty())
            .expect("Unable to create Method Not Allowed response")
    )
}

pub struct Service<T, C> where
    T: Api<C> + Clone + Send + 'static,
    C: Has<XSpanIdString> + Has<Option<Authorization>> + Send + Sync + 'static
{
    api_impl: T,
    marker: PhantomData<C>,
}

impl<T, C> Service<T, C> where
    T: Api<C> + Clone + Send + 'static,
    C: Has<XSpanIdString> + Has<Option<Authorization>> + Send + Sync + 'static
{
    pub fn new(api_impl: T) -> Self {
        Service {
            api_impl: api_impl,
            marker: PhantomData
        }
    }
}

impl<T, C> Clone for Service<T, C> where
    T: Api<C> + Clone + Send + 'static,
    C: Has<XSpanIdString> + Has<Option<Authorization>> + Send + Sync + 'static
{
    fn clone(&self) -> Self {
        Service {
            api_impl: self.api_impl.clone(),
            marker: self.marker.clone(),
        }
    }
}

impl<T, C> hyper::service::Service<(Request<Body>, C)> for Service<T, C> where
    T: Api<C> + Clone + Send + Sync + 'static,
    C: Has<XSpanIdString> + Has<Option<Authorization>> + Send + Sync + 'static
{
    type Response = Response<Body>;
    type Error = crate::ServiceError;
    type Future = ServiceFuture;

    fn poll_ready(&mut self, cx: &mut Context) -> Poll<Result<(), Self::Error>> {
        self.api_impl.poll_ready(cx)
    }

    fn call(&mut self, req: (Request<Body>, C)) -> Self::Future { async fn run<T, C>(mut api_impl: T, req: (Request<Body>, C)) -> Result<Response<Body>, crate::ServiceError> where
        T: Api<C> + Clone + Send + 'static,
        C: Has<XSpanIdString> + Has<Option<Authorization>> + Send + Sync + 'static
    {
        let (request, context) = req;
        let (parts, body) = request.into_parts();
        let (method, uri, headers) = (parts.method, parts.uri, parts.headers);
        let path = paths::GLOBAL_REGEX_SET.matches(uri.path());

        match &method {

            // GeocodingReverseSearch - GET /v4/geocoding/reverse
            &hyper::Method::GET if path.matched(paths::ID_V4_GEOCODING_REVERSE) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_lat = query_params.iter().filter(|e| e.0 == "lat").map(|e| e.1.to_owned())
                    .nth(0);
                let param_lat = match param_lat {
                    Some(param_lat) => {
                        let param_lat =
                            <f64 as std::str::FromStr>::from_str
                                (&param_lat);
                        match param_lat {
                            Ok(param_lat) => Some(param_lat),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter lat - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter lat")),
                        }
                    },
                    None => None,
                };
                let param_lat = match param_lat {
                    Some(param_lat) => param_lat,
                    None => return Ok(Response::builder()
                        .status(StatusCode::BAD_REQUEST)
                        .body(Body::from("Missing required query parameter lat"))
                        .expect("Unable to create Bad Request response for missing query parameter lat")),
                };
                let param_lng = query_params.iter().filter(|e| e.0 == "lng").map(|e| e.1.to_owned())
                    .nth(0);
                let param_lng = match param_lng {
                    Some(param_lng) => {
                        let param_lng =
                            <f64 as std::str::FromStr>::from_str
                                (&param_lng);
                        match param_lng {
                            Ok(param_lng) => Some(param_lng),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter lng - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter lng")),
                        }
                    },
                    None => None,
                };
                let param_lng = match param_lng {
                    Some(param_lng) => param_lng,
                    None => return Ok(Response::builder()
                        .status(StatusCode::BAD_REQUEST)
                        .body(Body::from("Missing required query parameter lng"))
                        .expect("Unable to create Bad Request response for missing query parameter lng")),
                };
                let param_within_country = query_params.iter().filter(|e| e.0 == "within.country").map(|e| e.1.to_owned())
                    .nth(0);
                let param_within_country = match param_within_country {
                    Some(param_within_country) => {
                        let param_within_country =
                            <String as std::str::FromStr>::from_str
                                (&param_within_country);
                        match param_within_country {
                            Ok(param_within_country) => Some(param_within_country),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter within.country - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter within.country")),
                        }
                    },
                    None => None,
                };

                                let result = api_impl.geocoding_reverse_search(
                                            param_lat,
                                            param_lng,
                                            param_within_country,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GeocodingReverseSearchResponse::MatchAQueryStringToGeographicCoordinates
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GEOCODING_REVERSE_SEARCH_MATCH_A_QUERY_STRING_TO_GEOGRAPHIC_COORDINATES"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GeocodingReverseSearchResponse::TheJsonBodyReturnedUponError
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(0).expect("Unable to turn 0 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GEOCODING_REVERSE_SEARCH_THE_JSON_BODY_RETURNED_UPON_ERROR"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // GeocodingSearch - GET /v4/geocoding/search
            &hyper::Method::GET if path.matched(paths::ID_V4_GEOCODING_SEARCH) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Query parameters (note that non-required or collection query parameters will ignore garbage values, rather than causing a 400 response)
                let query_params = form_urlencoded::parse(uri.query().unwrap_or_default().as_bytes()).collect::<Vec<_>>();
                let param_query = query_params.iter().filter(|e| e.0 == "query").map(|e| e.1.to_owned())
                    .nth(0);
                let param_query = match param_query {
                    Some(param_query) => {
                        let param_query =
                            <String as std::str::FromStr>::from_str
                                (&param_query);
                        match param_query {
                            Ok(param_query) => Some(param_query),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter query - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter query")),
                        }
                    },
                    None => None,
                };
                let param_query = match param_query {
                    Some(param_query) => param_query,
                    None => return Ok(Response::builder()
                        .status(StatusCode::BAD_REQUEST)
                        .body(Body::from("Missing required query parameter query"))
                        .expect("Unable to create Bad Request response for missing query parameter query")),
                };
                let param_focus_lat = query_params.iter().filter(|e| e.0 == "focus.lat").map(|e| e.1.to_owned())
                    .nth(0);
                let param_focus_lat = match param_focus_lat {
                    Some(param_focus_lat) => {
                        let param_focus_lat =
                            <f64 as std::str::FromStr>::from_str
                                (&param_focus_lat);
                        match param_focus_lat {
                            Ok(param_focus_lat) => Some(param_focus_lat),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter focus.lat - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter focus.lat")),
                        }
                    },
                    None => None,
                };
                let param_focus_lng = query_params.iter().filter(|e| e.0 == "focus.lng").map(|e| e.1.to_owned())
                    .nth(0);
                let param_focus_lng = match param_focus_lng {
                    Some(param_focus_lng) => {
                        let param_focus_lng =
                            <f64 as std::str::FromStr>::from_str
                                (&param_focus_lng);
                        match param_focus_lng {
                            Ok(param_focus_lng) => Some(param_focus_lng),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter focus.lng - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter focus.lng")),
                        }
                    },
                    None => None,
                };
                let param_within_country = query_params.iter().filter(|e| e.0 == "within.country").map(|e| e.1.to_owned())
                    .nth(0);
                let param_within_country = match param_within_country {
                    Some(param_within_country) => {
                        let param_within_country =
                            <String as std::str::FromStr>::from_str
                                (&param_within_country);
                        match param_within_country {
                            Ok(param_within_country) => Some(param_within_country),
                            Err(e) => return Ok(Response::builder()
                                .status(StatusCode::BAD_REQUEST)
                                .body(Body::from(format!("Couldn't parse query parameter within.country - doesn't match schema: {}", e)))
                                .expect("Unable to create Bad Request response for invalid query parameter within.country")),
                        }
                    },
                    None => None,
                };

                                let result = api_impl.geocoding_search(
                                            param_query,
                                            param_focus_lat,
                                            param_focus_lng,
                                            param_within_country,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                GeocodingSearchResponse::MatchAQueryStringToGeographicCoordinates
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GEOCODING_SEARCH_MATCH_A_QUERY_STRING_TO_GEOGRAPHIC_COORDINATES"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                GeocodingSearchResponse::TheJsonBodyReturnedUponError
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(0).expect("Unable to turn 0 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for GEOCODING_SEARCH_THE_JSON_BODY_RETURNED_UPON_ERROR"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // MapInfo - GET /v4/map-info
            &hyper::Method::GET if path.matched(paths::ID_V4_MAP_INFO) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                                let result = api_impl.map_info(
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        match result {
                                            Ok(rsp) => match rsp {
                                                MapInfoResponse::ReturnsInformationAboutCurrentlySupportedCountries
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for MAP_INFO_RETURNS_INFORMATION_ABOUT_CURRENTLY_SUPPORTED_COUNTRIES"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                MapInfoResponse::TheJsonBodyReturnedUponError
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(0).expect("Unable to turn 0 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for MAP_INFO_THE_JSON_BODY_RETURNED_UPON_ERROR"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
            },

            // Routes - POST /v4/routes
            &hyper::Method::POST if path.matched(paths::ID_V4_ROUTES) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Body parameters (note that non-required body parameters will ignore garbage
                // values, rather than causing a 400 response). Produce warning header and logs for
                // any unused fields.
                let result = body.to_raw().await;
                match result {
                            Ok(body) => {
                                let mut unused_elements = Vec::new();
                                let param_request_routes: Option<models::RequestRoutes> = if !body.is_empty() {
                                    let deserializer = &mut serde_json::Deserializer::from_slice(&*body);
                                    match serde_ignored::deserialize(deserializer, |path| {
                                            warn!("Ignoring unknown field in body: {}", path);
                                            unused_elements.push(path.to_string());
                                    }) {
                                        Ok(param_request_routes) => param_request_routes,
                                        Err(e) => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from(format!("Couldn't parse body parameter RequestRoutes - doesn't match schema: {}", e)))
                                                        .expect("Unable to create Bad Request response for invalid body parameter RequestRoutes due to schema")),
                                    }
                                } else {
                                    None
                                };
                                let param_request_routes = match param_request_routes {
                                    Some(param_request_routes) => param_request_routes,
                                    None => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from("Missing required body parameter RequestRoutes"))
                                                        .expect("Unable to create Bad Request response for missing body parameter RequestRoutes")),
                                };

                                let result = api_impl.routes(
                                            param_request_routes,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        if !unused_elements.is_empty() {
                                            response.headers_mut().insert(
                                                HeaderName::from_static("warning"),
                                                HeaderValue::from_str(format!("Ignoring unknown fields in body: {:?}", unused_elements).as_str())
                                                    .expect("Unable to create Warning header value"));
                                        }

                                        match result {
                                            Ok(rsp) => match rsp {
                                                RoutesResponse::ReturnsRoutingInformationBetweenSourceAndDestinations
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for ROUTES_RETURNS_ROUTING_INFORMATION_BETWEEN_SOURCE_AND_DESTINATIONS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                RoutesResponse::TheJsonBodyReturnedUponError
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(0).expect("Unable to turn 0 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for ROUTES_THE_JSON_BODY_RETURNED_UPON_ERROR"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
                            },
                            Err(e) => Ok(Response::builder()
                                                .status(StatusCode::BAD_REQUEST)
                                                .body(Body::from(format!("Couldn't read body parameter RequestRoutes: {}", e)))
                                                .expect("Unable to create Bad Request response due to unable to read body parameter RequestRoutes")),
                        }
            },

            // SupportedLocations - POST /v4/supported-locations
            &hyper::Method::POST if path.matched(paths::ID_V4_SUPPORTED_LOCATIONS) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Body parameters (note that non-required body parameters will ignore garbage
                // values, rather than causing a 400 response). Produce warning header and logs for
                // any unused fields.
                let result = body.to_raw().await;
                match result {
                            Ok(body) => {
                                let mut unused_elements = Vec::new();
                                let param_request_supported_locations: Option<models::RequestSupportedLocations> = if !body.is_empty() {
                                    let deserializer = &mut serde_json::Deserializer::from_slice(&*body);
                                    match serde_ignored::deserialize(deserializer, |path| {
                                            warn!("Ignoring unknown field in body: {}", path);
                                            unused_elements.push(path.to_string());
                                    }) {
                                        Ok(param_request_supported_locations) => param_request_supported_locations,
                                        Err(e) => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from(format!("Couldn't parse body parameter RequestSupportedLocations - doesn't match schema: {}", e)))
                                                        .expect("Unable to create Bad Request response for invalid body parameter RequestSupportedLocations due to schema")),
                                    }
                                } else {
                                    None
                                };
                                let param_request_supported_locations = match param_request_supported_locations {
                                    Some(param_request_supported_locations) => param_request_supported_locations,
                                    None => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from("Missing required body parameter RequestSupportedLocations"))
                                                        .expect("Unable to create Bad Request response for missing body parameter RequestSupportedLocations")),
                                };

                                let result = api_impl.supported_locations(
                                            param_request_supported_locations,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        if !unused_elements.is_empty() {
                                            response.headers_mut().insert(
                                                HeaderName::from_static("warning"),
                                                HeaderValue::from_str(format!("Ignoring unknown fields in body: {:?}", unused_elements).as_str())
                                                    .expect("Unable to create Warning header value"));
                                        }

                                        match result {
                                            Ok(rsp) => match rsp {
                                                SupportedLocationsResponse::FindOutWhatPointsAreSupportedByOurApi
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for SUPPORTED_LOCATIONS_FIND_OUT_WHAT_POINTS_ARE_SUPPORTED_BY_OUR_API"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                SupportedLocationsResponse::TheJsonBodyReturnedUponError
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(0).expect("Unable to turn 0 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for SUPPORTED_LOCATIONS_THE_JSON_BODY_RETURNED_UPON_ERROR"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
                            },
                            Err(e) => Ok(Response::builder()
                                                .status(StatusCode::BAD_REQUEST)
                                                .body(Body::from(format!("Couldn't read body parameter RequestSupportedLocations: {}", e)))
                                                .expect("Unable to create Bad Request response due to unable to read body parameter RequestSupportedLocations")),
                        }
            },

            // TimeFilter - POST /v4/time-filter
            &hyper::Method::POST if path.matched(paths::ID_V4_TIME_FILTER) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Body parameters (note that non-required body parameters will ignore garbage
                // values, rather than causing a 400 response). Produce warning header and logs for
                // any unused fields.
                let result = body.to_raw().await;
                match result {
                            Ok(body) => {
                                let mut unused_elements = Vec::new();
                                let param_request_time_filter: Option<models::RequestTimeFilter> = if !body.is_empty() {
                                    let deserializer = &mut serde_json::Deserializer::from_slice(&*body);
                                    match serde_ignored::deserialize(deserializer, |path| {
                                            warn!("Ignoring unknown field in body: {}", path);
                                            unused_elements.push(path.to_string());
                                    }) {
                                        Ok(param_request_time_filter) => param_request_time_filter,
                                        Err(e) => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from(format!("Couldn't parse body parameter RequestTimeFilter - doesn't match schema: {}", e)))
                                                        .expect("Unable to create Bad Request response for invalid body parameter RequestTimeFilter due to schema")),
                                    }
                                } else {
                                    None
                                };
                                let param_request_time_filter = match param_request_time_filter {
                                    Some(param_request_time_filter) => param_request_time_filter,
                                    None => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from("Missing required body parameter RequestTimeFilter"))
                                                        .expect("Unable to create Bad Request response for missing body parameter RequestTimeFilter")),
                                };

                                let result = api_impl.time_filter(
                                            param_request_time_filter,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        if !unused_elements.is_empty() {
                                            response.headers_mut().insert(
                                                HeaderName::from_static("warning"),
                                                HeaderValue::from_str(format!("Ignoring unknown fields in body: {:?}", unused_elements).as_str())
                                                    .expect("Unable to create Warning header value"));
                                        }

                                        match result {
                                            Ok(rsp) => match rsp {
                                                TimeFilterResponse::GivenOriginAndDestinationPointsFilterOutPointsThatCannotBeReachedWithinSpecifiedTimeLimit
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for TIME_FILTER_GIVEN_ORIGIN_AND_DESTINATION_POINTS_FILTER_OUT_POINTS_THAT_CANNOT_BE_REACHED_WITHIN_SPECIFIED_TIME_LIMIT"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                TimeFilterResponse::TheJsonBodyReturnedUponError
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(0).expect("Unable to turn 0 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for TIME_FILTER_THE_JSON_BODY_RETURNED_UPON_ERROR"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
                            },
                            Err(e) => Ok(Response::builder()
                                                .status(StatusCode::BAD_REQUEST)
                                                .body(Body::from(format!("Couldn't read body parameter RequestTimeFilter: {}", e)))
                                                .expect("Unable to create Bad Request response due to unable to read body parameter RequestTimeFilter")),
                        }
            },

            // TimeFilterFast - POST /v4/time-filter/fast
            &hyper::Method::POST if path.matched(paths::ID_V4_TIME_FILTER_FAST) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Body parameters (note that non-required body parameters will ignore garbage
                // values, rather than causing a 400 response). Produce warning header and logs for
                // any unused fields.
                let result = body.to_raw().await;
                match result {
                            Ok(body) => {
                                let mut unused_elements = Vec::new();
                                let param_request_time_filter_fast: Option<models::RequestTimeFilterFast> = if !body.is_empty() {
                                    let deserializer = &mut serde_json::Deserializer::from_slice(&*body);
                                    match serde_ignored::deserialize(deserializer, |path| {
                                            warn!("Ignoring unknown field in body: {}", path);
                                            unused_elements.push(path.to_string());
                                    }) {
                                        Ok(param_request_time_filter_fast) => param_request_time_filter_fast,
                                        Err(e) => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from(format!("Couldn't parse body parameter RequestTimeFilterFast - doesn't match schema: {}", e)))
                                                        .expect("Unable to create Bad Request response for invalid body parameter RequestTimeFilterFast due to schema")),
                                    }
                                } else {
                                    None
                                };
                                let param_request_time_filter_fast = match param_request_time_filter_fast {
                                    Some(param_request_time_filter_fast) => param_request_time_filter_fast,
                                    None => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from("Missing required body parameter RequestTimeFilterFast"))
                                                        .expect("Unable to create Bad Request response for missing body parameter RequestTimeFilterFast")),
                                };

                                let result = api_impl.time_filter_fast(
                                            param_request_time_filter_fast,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        if !unused_elements.is_empty() {
                                            response.headers_mut().insert(
                                                HeaderName::from_static("warning"),
                                                HeaderValue::from_str(format!("Ignoring unknown fields in body: {:?}", unused_elements).as_str())
                                                    .expect("Unable to create Warning header value"));
                                        }

                                        match result {
                                            Ok(rsp) => match rsp {
                                                TimeFilterFastResponse::AVeryFastVersionOfTimeFilter
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for TIME_FILTER_FAST_A_VERY_FAST_VERSION_OF_TIME_FILTER"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                TimeFilterFastResponse::TheJsonBodyReturnedUponError
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(0).expect("Unable to turn 0 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for TIME_FILTER_FAST_THE_JSON_BODY_RETURNED_UPON_ERROR"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
                            },
                            Err(e) => Ok(Response::builder()
                                                .status(StatusCode::BAD_REQUEST)
                                                .body(Body::from(format!("Couldn't read body parameter RequestTimeFilterFast: {}", e)))
                                                .expect("Unable to create Bad Request response due to unable to read body parameter RequestTimeFilterFast")),
                        }
            },

            // TimeFilterPostcodeDistricts - POST /v4/time-filter/postcode-districts
            &hyper::Method::POST if path.matched(paths::ID_V4_TIME_FILTER_POSTCODE_DISTRICTS) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Body parameters (note that non-required body parameters will ignore garbage
                // values, rather than causing a 400 response). Produce warning header and logs for
                // any unused fields.
                let result = body.to_raw().await;
                match result {
                            Ok(body) => {
                                let mut unused_elements = Vec::new();
                                let param_request_time_filter_postcode_districts: Option<models::RequestTimeFilterPostcodeDistricts> = if !body.is_empty() {
                                    let deserializer = &mut serde_json::Deserializer::from_slice(&*body);
                                    match serde_ignored::deserialize(deserializer, |path| {
                                            warn!("Ignoring unknown field in body: {}", path);
                                            unused_elements.push(path.to_string());
                                    }) {
                                        Ok(param_request_time_filter_postcode_districts) => param_request_time_filter_postcode_districts,
                                        Err(e) => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from(format!("Couldn't parse body parameter RequestTimeFilterPostcodeDistricts - doesn't match schema: {}", e)))
                                                        .expect("Unable to create Bad Request response for invalid body parameter RequestTimeFilterPostcodeDistricts due to schema")),
                                    }
                                } else {
                                    None
                                };
                                let param_request_time_filter_postcode_districts = match param_request_time_filter_postcode_districts {
                                    Some(param_request_time_filter_postcode_districts) => param_request_time_filter_postcode_districts,
                                    None => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from("Missing required body parameter RequestTimeFilterPostcodeDistricts"))
                                                        .expect("Unable to create Bad Request response for missing body parameter RequestTimeFilterPostcodeDistricts")),
                                };

                                let result = api_impl.time_filter_postcode_districts(
                                            param_request_time_filter_postcode_districts,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        if !unused_elements.is_empty() {
                                            response.headers_mut().insert(
                                                HeaderName::from_static("warning"),
                                                HeaderValue::from_str(format!("Ignoring unknown fields in body: {:?}", unused_elements).as_str())
                                                    .expect("Unable to create Warning header value"));
                                        }

                                        match result {
                                            Ok(rsp) => match rsp {
                                                TimeFilterPostcodeDistrictsResponse::FindDistrictsThatHaveACertainCoverageFromOriginAndGetStatisticsAboutPostcodesWithinSuchDistricts
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for TIME_FILTER_POSTCODE_DISTRICTS_FIND_DISTRICTS_THAT_HAVE_A_CERTAIN_COVERAGE_FROM_ORIGIN_AND_GET_STATISTICS_ABOUT_POSTCODES_WITHIN_SUCH_DISTRICTS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                TimeFilterPostcodeDistrictsResponse::TheJsonBodyReturnedUponError
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(0).expect("Unable to turn 0 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for TIME_FILTER_POSTCODE_DISTRICTS_THE_JSON_BODY_RETURNED_UPON_ERROR"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
                            },
                            Err(e) => Ok(Response::builder()
                                                .status(StatusCode::BAD_REQUEST)
                                                .body(Body::from(format!("Couldn't read body parameter RequestTimeFilterPostcodeDistricts: {}", e)))
                                                .expect("Unable to create Bad Request response due to unable to read body parameter RequestTimeFilterPostcodeDistricts")),
                        }
            },

            // TimeFilterPostcodeSectors - POST /v4/time-filter/postcode-sectors
            &hyper::Method::POST if path.matched(paths::ID_V4_TIME_FILTER_POSTCODE_SECTORS) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Body parameters (note that non-required body parameters will ignore garbage
                // values, rather than causing a 400 response). Produce warning header and logs for
                // any unused fields.
                let result = body.to_raw().await;
                match result {
                            Ok(body) => {
                                let mut unused_elements = Vec::new();
                                let param_request_time_filter_postcode_sectors: Option<models::RequestTimeFilterPostcodeSectors> = if !body.is_empty() {
                                    let deserializer = &mut serde_json::Deserializer::from_slice(&*body);
                                    match serde_ignored::deserialize(deserializer, |path| {
                                            warn!("Ignoring unknown field in body: {}", path);
                                            unused_elements.push(path.to_string());
                                    }) {
                                        Ok(param_request_time_filter_postcode_sectors) => param_request_time_filter_postcode_sectors,
                                        Err(e) => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from(format!("Couldn't parse body parameter RequestTimeFilterPostcodeSectors - doesn't match schema: {}", e)))
                                                        .expect("Unable to create Bad Request response for invalid body parameter RequestTimeFilterPostcodeSectors due to schema")),
                                    }
                                } else {
                                    None
                                };
                                let param_request_time_filter_postcode_sectors = match param_request_time_filter_postcode_sectors {
                                    Some(param_request_time_filter_postcode_sectors) => param_request_time_filter_postcode_sectors,
                                    None => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from("Missing required body parameter RequestTimeFilterPostcodeSectors"))
                                                        .expect("Unable to create Bad Request response for missing body parameter RequestTimeFilterPostcodeSectors")),
                                };

                                let result = api_impl.time_filter_postcode_sectors(
                                            param_request_time_filter_postcode_sectors,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        if !unused_elements.is_empty() {
                                            response.headers_mut().insert(
                                                HeaderName::from_static("warning"),
                                                HeaderValue::from_str(format!("Ignoring unknown fields in body: {:?}", unused_elements).as_str())
                                                    .expect("Unable to create Warning header value"));
                                        }

                                        match result {
                                            Ok(rsp) => match rsp {
                                                TimeFilterPostcodeSectorsResponse::FindSectorsThatHaveACertainCoverageFromOriginAndGetStatisticsAboutPostcodesWithinSuchSectors
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for TIME_FILTER_POSTCODE_SECTORS_FIND_SECTORS_THAT_HAVE_A_CERTAIN_COVERAGE_FROM_ORIGIN_AND_GET_STATISTICS_ABOUT_POSTCODES_WITHIN_SUCH_SECTORS"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                TimeFilterPostcodeSectorsResponse::TheJsonBodyReturnedUponError
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(0).expect("Unable to turn 0 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for TIME_FILTER_POSTCODE_SECTORS_THE_JSON_BODY_RETURNED_UPON_ERROR"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
                            },
                            Err(e) => Ok(Response::builder()
                                                .status(StatusCode::BAD_REQUEST)
                                                .body(Body::from(format!("Couldn't read body parameter RequestTimeFilterPostcodeSectors: {}", e)))
                                                .expect("Unable to create Bad Request response due to unable to read body parameter RequestTimeFilterPostcodeSectors")),
                        }
            },

            // TimeFilterPostcodes - POST /v4/time-filter/postcodes
            &hyper::Method::POST if path.matched(paths::ID_V4_TIME_FILTER_POSTCODES) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Body parameters (note that non-required body parameters will ignore garbage
                // values, rather than causing a 400 response). Produce warning header and logs for
                // any unused fields.
                let result = body.to_raw().await;
                match result {
                            Ok(body) => {
                                let mut unused_elements = Vec::new();
                                let param_request_time_filter_postcodes: Option<models::RequestTimeFilterPostcodes> = if !body.is_empty() {
                                    let deserializer = &mut serde_json::Deserializer::from_slice(&*body);
                                    match serde_ignored::deserialize(deserializer, |path| {
                                            warn!("Ignoring unknown field in body: {}", path);
                                            unused_elements.push(path.to_string());
                                    }) {
                                        Ok(param_request_time_filter_postcodes) => param_request_time_filter_postcodes,
                                        Err(e) => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from(format!("Couldn't parse body parameter RequestTimeFilterPostcodes - doesn't match schema: {}", e)))
                                                        .expect("Unable to create Bad Request response for invalid body parameter RequestTimeFilterPostcodes due to schema")),
                                    }
                                } else {
                                    None
                                };
                                let param_request_time_filter_postcodes = match param_request_time_filter_postcodes {
                                    Some(param_request_time_filter_postcodes) => param_request_time_filter_postcodes,
                                    None => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from("Missing required body parameter RequestTimeFilterPostcodes"))
                                                        .expect("Unable to create Bad Request response for missing body parameter RequestTimeFilterPostcodes")),
                                };

                                let result = api_impl.time_filter_postcodes(
                                            param_request_time_filter_postcodes,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        if !unused_elements.is_empty() {
                                            response.headers_mut().insert(
                                                HeaderName::from_static("warning"),
                                                HeaderValue::from_str(format!("Ignoring unknown fields in body: {:?}", unused_elements).as_str())
                                                    .expect("Unable to create Warning header value"));
                                        }

                                        match result {
                                            Ok(rsp) => match rsp {
                                                TimeFilterPostcodesResponse::FindReachablePostcodesFromOriginAndGetStatisticsAboutSuchPostcodes
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for TIME_FILTER_POSTCODES_FIND_REACHABLE_POSTCODES_FROM_ORIGIN_AND_GET_STATISTICS_ABOUT_SUCH_POSTCODES"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                TimeFilterPostcodesResponse::TheJsonBodyReturnedUponError
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(0).expect("Unable to turn 0 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for TIME_FILTER_POSTCODES_THE_JSON_BODY_RETURNED_UPON_ERROR"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
                            },
                            Err(e) => Ok(Response::builder()
                                                .status(StatusCode::BAD_REQUEST)
                                                .body(Body::from(format!("Couldn't read body parameter RequestTimeFilterPostcodes: {}", e)))
                                                .expect("Unable to create Bad Request response due to unable to read body parameter RequestTimeFilterPostcodes")),
                        }
            },

            // TimeMap - POST /v4/time-map
            &hyper::Method::POST if path.matched(paths::ID_V4_TIME_MAP) => {
                {
                    let authorization = match (&context as &dyn Has<Option<Authorization>>).get() {
                        &Some(ref authorization) => authorization,
                        &None => return Ok(Response::builder()
                                                .status(StatusCode::FORBIDDEN)
                                                .body(Body::from("Unauthenticated"))
                                                .expect("Unable to create Authentication Forbidden response")),
                    };
                }

                // Body parameters (note that non-required body parameters will ignore garbage
                // values, rather than causing a 400 response). Produce warning header and logs for
                // any unused fields.
                let result = body.to_raw().await;
                match result {
                            Ok(body) => {
                                let mut unused_elements = Vec::new();
                                let param_request_time_map: Option<models::RequestTimeMap> = if !body.is_empty() {
                                    let deserializer = &mut serde_json::Deserializer::from_slice(&*body);
                                    match serde_ignored::deserialize(deserializer, |path| {
                                            warn!("Ignoring unknown field in body: {}", path);
                                            unused_elements.push(path.to_string());
                                    }) {
                                        Ok(param_request_time_map) => param_request_time_map,
                                        Err(e) => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from(format!("Couldn't parse body parameter RequestTimeMap - doesn't match schema: {}", e)))
                                                        .expect("Unable to create Bad Request response for invalid body parameter RequestTimeMap due to schema")),
                                    }
                                } else {
                                    None
                                };
                                let param_request_time_map = match param_request_time_map {
                                    Some(param_request_time_map) => param_request_time_map,
                                    None => return Ok(Response::builder()
                                                        .status(StatusCode::BAD_REQUEST)
                                                        .body(Body::from("Missing required body parameter RequestTimeMap"))
                                                        .expect("Unable to create Bad Request response for missing body parameter RequestTimeMap")),
                                };

                                let result = api_impl.time_map(
                                            param_request_time_map,
                                        &context
                                    ).await;
                                let mut response = Response::new(Body::empty());
                                response.headers_mut().insert(
                                            HeaderName::from_static("x-span-id"),
                                            HeaderValue::from_str((&context as &dyn Has<XSpanIdString>).get().0.clone().to_string().as_str())
                                                .expect("Unable to create X-Span-ID header value"));

                                        if !unused_elements.is_empty() {
                                            response.headers_mut().insert(
                                                HeaderName::from_static("warning"),
                                                HeaderValue::from_str(format!("Ignoring unknown fields in body: {:?}", unused_elements).as_str())
                                                    .expect("Unable to create Warning header value"));
                                        }

                                        match result {
                                            Ok(rsp) => match rsp {
                                                TimeMapResponse::GivenOriginCoordinates
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(200).expect("Unable to turn 200 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for TIME_MAP_GIVEN_ORIGIN_COORDINATES"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                                TimeMapResponse::TheJsonBodyReturnedUponError
                                                    (body)
                                                => {
                                                    *response.status_mut() = StatusCode::from_u16(0).expect("Unable to turn 0 into a StatusCode");
                                                    response.headers_mut().insert(
                                                        CONTENT_TYPE,
                                                        HeaderValue::from_str("application/json")
                                                            .expect("Unable to create Content-Type header for TIME_MAP_THE_JSON_BODY_RETURNED_UPON_ERROR"));
                                                    let body = serde_json::to_string(&body).expect("impossible to fail to serialize");
                                                    *response.body_mut() = Body::from(body);
                                                },
                                            },
                                            Err(_) => {
                                                // Application code returned an error. This should not happen, as the implementation should
                                                // return a valid response.
                                                *response.status_mut() = StatusCode::INTERNAL_SERVER_ERROR;
                                                *response.body_mut() = Body::from("An internal error occurred");
                                            },
                                        }

                                        Ok(response)
                            },
                            Err(e) => Ok(Response::builder()
                                                .status(StatusCode::BAD_REQUEST)
                                                .body(Body::from(format!("Couldn't read body parameter RequestTimeMap: {}", e)))
                                                .expect("Unable to create Bad Request response due to unable to read body parameter RequestTimeMap")),
                        }
            },

            _ if path.matched(paths::ID_V4_GEOCODING_REVERSE) => method_not_allowed(),
            _ if path.matched(paths::ID_V4_GEOCODING_SEARCH) => method_not_allowed(),
            _ if path.matched(paths::ID_V4_MAP_INFO) => method_not_allowed(),
            _ if path.matched(paths::ID_V4_ROUTES) => method_not_allowed(),
            _ if path.matched(paths::ID_V4_SUPPORTED_LOCATIONS) => method_not_allowed(),
            _ if path.matched(paths::ID_V4_TIME_FILTER) => method_not_allowed(),
            _ if path.matched(paths::ID_V4_TIME_FILTER_FAST) => method_not_allowed(),
            _ if path.matched(paths::ID_V4_TIME_FILTER_POSTCODE_DISTRICTS) => method_not_allowed(),
            _ if path.matched(paths::ID_V4_TIME_FILTER_POSTCODE_SECTORS) => method_not_allowed(),
            _ if path.matched(paths::ID_V4_TIME_FILTER_POSTCODES) => method_not_allowed(),
            _ if path.matched(paths::ID_V4_TIME_MAP) => method_not_allowed(),
            _ => Ok(Response::builder().status(StatusCode::NOT_FOUND)
                    .body(Body::empty())
                    .expect("Unable to create Not Found response"))
        }
    } Box::pin(run(self.api_impl.clone(), req)) }
}

/// Request parser for `Api`.
pub struct ApiRequestParser;
impl<T> RequestParser<T> for ApiRequestParser {
    fn parse_operation_id(request: &Request<T>) -> Result<&'static str, ()> {
        let path = paths::GLOBAL_REGEX_SET.matches(request.uri().path());
        match request.method() {
            // GeocodingReverseSearch - GET /v4/geocoding/reverse
            &hyper::Method::GET if path.matched(paths::ID_V4_GEOCODING_REVERSE) => Ok("GeocodingReverseSearch"),
            // GeocodingSearch - GET /v4/geocoding/search
            &hyper::Method::GET if path.matched(paths::ID_V4_GEOCODING_SEARCH) => Ok("GeocodingSearch"),
            // MapInfo - GET /v4/map-info
            &hyper::Method::GET if path.matched(paths::ID_V4_MAP_INFO) => Ok("MapInfo"),
            // Routes - POST /v4/routes
            &hyper::Method::POST if path.matched(paths::ID_V4_ROUTES) => Ok("Routes"),
            // SupportedLocations - POST /v4/supported-locations
            &hyper::Method::POST if path.matched(paths::ID_V4_SUPPORTED_LOCATIONS) => Ok("SupportedLocations"),
            // TimeFilter - POST /v4/time-filter
            &hyper::Method::POST if path.matched(paths::ID_V4_TIME_FILTER) => Ok("TimeFilter"),
            // TimeFilterFast - POST /v4/time-filter/fast
            &hyper::Method::POST if path.matched(paths::ID_V4_TIME_FILTER_FAST) => Ok("TimeFilterFast"),
            // TimeFilterPostcodeDistricts - POST /v4/time-filter/postcode-districts
            &hyper::Method::POST if path.matched(paths::ID_V4_TIME_FILTER_POSTCODE_DISTRICTS) => Ok("TimeFilterPostcodeDistricts"),
            // TimeFilterPostcodeSectors - POST /v4/time-filter/postcode-sectors
            &hyper::Method::POST if path.matched(paths::ID_V4_TIME_FILTER_POSTCODE_SECTORS) => Ok("TimeFilterPostcodeSectors"),
            // TimeFilterPostcodes - POST /v4/time-filter/postcodes
            &hyper::Method::POST if path.matched(paths::ID_V4_TIME_FILTER_POSTCODES) => Ok("TimeFilterPostcodes"),
            // TimeMap - POST /v4/time-map
            &hyper::Method::POST if path.matched(paths::ID_V4_TIME_MAP) => Ok("TimeMap"),
            _ => Err(()),
        }
    }
}
