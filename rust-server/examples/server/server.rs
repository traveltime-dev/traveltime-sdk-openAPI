//! Main library entry point for openapi_client implementation.

#![allow(unused_imports)]

use async_trait::async_trait;
use futures::{future, Stream, StreamExt, TryFutureExt, TryStreamExt};
use hyper::server::conn::Http;
use hyper::service::Service;
use log::info;
#[cfg(not(any(target_os = "macos", target_os = "windows", target_os = "ios")))]
use openssl::ssl::SslAcceptorBuilder;
use std::future::Future;
use std::marker::PhantomData;
use std::net::SocketAddr;
use std::sync::{Arc, Mutex};
use std::task::{Context, Poll};
use swagger::{Has, XSpanIdString};
use swagger::auth::MakeAllowAllAuthenticator;
use swagger::EmptyContext;
use tokio::net::TcpListener;

#[cfg(not(any(target_os = "macos", target_os = "windows", target_os = "ios")))]
use openssl::ssl::{SslAcceptor, SslFiletype, SslMethod};

use openapi_client::models;

/// Builds an SSL implementation for Simple HTTPS from some hard-coded file names
pub async fn create(addr: &str, https: bool) {
    let addr = addr.parse().expect("Failed to parse bind address");

    let server = Server::new();

    let service = MakeService::new(server);

    let service = MakeAllowAllAuthenticator::new(service, "cosmo");

    let mut service =
        openapi_client::server::context::MakeAddContext::<_, EmptyContext>::new(
            service
        );

    if https {
        #[cfg(any(target_os = "macos", target_os = "windows", target_os = "ios"))]
        {
            unimplemented!("SSL is not implemented for the examples on MacOS, Windows or iOS");
        }

        #[cfg(not(any(target_os = "macos", target_os = "windows", target_os = "ios")))]
        {
            let mut ssl = SslAcceptor::mozilla_intermediate_v5(SslMethod::tls()).expect("Failed to create SSL Acceptor");

            // Server authentication
            ssl.set_private_key_file("examples/server-key.pem", SslFiletype::PEM).expect("Failed to set private key");
            ssl.set_certificate_chain_file("examples/server-chain.pem").expect("Failed to set cerificate chain");
            ssl.check_private_key().expect("Failed to check private key");

            let tls_acceptor = Arc::new(ssl.build());
            let mut tcp_listener = TcpListener::bind(&addr).await.unwrap();
            let mut incoming = tcp_listener.incoming();

            while let (Some(tcp), rest) = incoming.into_future().await {
                if let Ok(tcp) = tcp {
                    let addr = tcp.peer_addr().expect("Unable to get remote address");
                    let service = service.call(addr);
                    let tls_acceptor = Arc::clone(&tls_acceptor);

                    tokio::spawn(async move {
                        let tls = tokio_openssl::accept(&*tls_acceptor, tcp).await.map_err(|_| ())?;

                        let service = service.await.map_err(|_| ())?;

                        Http::new().serve_connection(tls, service).await.map_err(|_| ())
                    });
                }

                incoming = rest;
            }
        }
    } else {
        // Using HTTP
        hyper::server::Server::bind(&addr).serve(service).await.unwrap()
    }
}

#[derive(Copy, Clone)]
pub struct Server<C> {
    marker: PhantomData<C>,
}

impl<C> Server<C> {
    pub fn new() -> Self {
        Server{marker: PhantomData}
    }
}


use openapi_client::{
    Api,
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
    TimeMapResponse,
};
use openapi_client::server::MakeService;
use std::error::Error;
use swagger::ApiError;

#[async_trait]
impl<C> Api<C> for Server<C> where C: Has<XSpanIdString> + Send + Sync
{
    async fn geocoding_reverse_search(
        &self,
        lat: f64,
        lng: f64,
        within_country: Option<String>,
        context: &C) -> Result<GeocodingReverseSearchResponse, ApiError>
    {
        let context = context.clone();
        info!("geocoding_reverse_search({}, {}, {:?}) - X-Span-ID: {:?}", lat, lng, within_country, context.get().0.clone());
        Err("Generic failuare".into())
    }

    async fn geocoding_search(
        &self,
        query: String,
        focus_lat: Option<f64>,
        focus_lng: Option<f64>,
        within_country: Option<String>,
        context: &C) -> Result<GeocodingSearchResponse, ApiError>
    {
        let context = context.clone();
        info!("geocoding_search(\"{}\", {:?}, {:?}, {:?}) - X-Span-ID: {:?}", query, focus_lat, focus_lng, within_country, context.get().0.clone());
        Err("Generic failuare".into())
    }

    async fn map_info(
        &self,
        context: &C) -> Result<MapInfoResponse, ApiError>
    {
        let context = context.clone();
        info!("map_info() - X-Span-ID: {:?}", context.get().0.clone());
        Err("Generic failuare".into())
    }

    async fn routes(
        &self,
        request_routes: models::RequestRoutes,
        context: &C) -> Result<RoutesResponse, ApiError>
    {
        let context = context.clone();
        info!("routes({:?}) - X-Span-ID: {:?}", request_routes, context.get().0.clone());
        Err("Generic failuare".into())
    }

    async fn supported_locations(
        &self,
        request_supported_locations: models::RequestSupportedLocations,
        context: &C) -> Result<SupportedLocationsResponse, ApiError>
    {
        let context = context.clone();
        info!("supported_locations({:?}) - X-Span-ID: {:?}", request_supported_locations, context.get().0.clone());
        Err("Generic failuare".into())
    }

    async fn time_filter(
        &self,
        request_time_filter: models::RequestTimeFilter,
        context: &C) -> Result<TimeFilterResponse, ApiError>
    {
        let context = context.clone();
        info!("time_filter({:?}) - X-Span-ID: {:?}", request_time_filter, context.get().0.clone());
        Err("Generic failuare".into())
    }

    async fn time_filter_fast(
        &self,
        request_time_filter_fast: models::RequestTimeFilterFast,
        context: &C) -> Result<TimeFilterFastResponse, ApiError>
    {
        let context = context.clone();
        info!("time_filter_fast({:?}) - X-Span-ID: {:?}", request_time_filter_fast, context.get().0.clone());
        Err("Generic failuare".into())
    }

    async fn time_filter_postcode_districts(
        &self,
        request_time_filter_postcode_districts: models::RequestTimeFilterPostcodeDistricts,
        context: &C) -> Result<TimeFilterPostcodeDistrictsResponse, ApiError>
    {
        let context = context.clone();
        info!("time_filter_postcode_districts({:?}) - X-Span-ID: {:?}", request_time_filter_postcode_districts, context.get().0.clone());
        Err("Generic failuare".into())
    }

    async fn time_filter_postcode_sectors(
        &self,
        request_time_filter_postcode_sectors: models::RequestTimeFilterPostcodeSectors,
        context: &C) -> Result<TimeFilterPostcodeSectorsResponse, ApiError>
    {
        let context = context.clone();
        info!("time_filter_postcode_sectors({:?}) - X-Span-ID: {:?}", request_time_filter_postcode_sectors, context.get().0.clone());
        Err("Generic failuare".into())
    }

    async fn time_filter_postcodes(
        &self,
        request_time_filter_postcodes: models::RequestTimeFilterPostcodes,
        context: &C) -> Result<TimeFilterPostcodesResponse, ApiError>
    {
        let context = context.clone();
        info!("time_filter_postcodes({:?}) - X-Span-ID: {:?}", request_time_filter_postcodes, context.get().0.clone());
        Err("Generic failuare".into())
    }

    async fn time_map(
        &self,
        request_time_map: models::RequestTimeMap,
        context: &C) -> Result<TimeMapResponse, ApiError>
    {
        let context = context.clone();
        info!("time_map({:?}) - X-Span-ID: {:?}", request_time_map, context.get().0.clone());
        Err("Generic failuare".into())
    }

}
