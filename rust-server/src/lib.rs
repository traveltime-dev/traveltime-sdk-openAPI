#![allow(missing_docs, trivial_casts, unused_variables, unused_mut, unused_imports, unused_extern_crates, non_camel_case_types)]

use async_trait::async_trait;
use futures::Stream;
use std::error::Error;
use std::task::{Poll, Context};
use swagger::{ApiError, ContextWrapper};
use serde::{Serialize, Deserialize};

type ServiceError = Box<dyn Error + Send + Sync + 'static>;

pub const BASE_PATH: &'static str = "";
pub const API_VERSION: &'static str = "1.2.2";

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GeocodingReverseSearchResponse {
    /// Match a query string to geographic coordinates. [Docs link](http://docs.traveltime.com/reference/geocoding-search/)
    MatchAQueryStringToGeographicCoordinates
    (models::ResponseGeocoding)
    ,
    /// The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)
    TheJsonBodyReturnedUponError
    (models::ResponseError)
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum GeocodingSearchResponse {
    /// Match a query string to geographic coordinates. [Docs link](http://docs.traveltime.com/reference/geocoding-search/)
    MatchAQueryStringToGeographicCoordinates
    (models::ResponseGeocoding)
    ,
    /// The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)
    TheJsonBodyReturnedUponError
    (models::ResponseError)
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum MapInfoResponse {
    /// Returns information about currently supported countries. [Docs link](http://docs.traveltime.com/reference/map-info/)
    ReturnsInformationAboutCurrentlySupportedCountries
    (models::ResponseMapInfo)
    ,
    /// The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)
    TheJsonBodyReturnedUponError
    (models::ResponseError)
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum RoutesResponse {
    /// Returns routing information between source and destinations. [Docs link](http://docs.traveltime.com/reference/routes/)
    ReturnsRoutingInformationBetweenSourceAndDestinations
    (models::ResponseRoutes)
    ,
    /// The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)
    TheJsonBodyReturnedUponError
    (models::ResponseError)
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum SupportedLocationsResponse {
    /// Find out what points are supported by our api. [Docs link](http://docs.traveltime.com/reference/supported-locations/)
    FindOutWhatPointsAreSupportedByOurApi
    (models::ResponseSupportedLocations)
    ,
    /// The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)
    TheJsonBodyReturnedUponError
    (models::ResponseError)
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum TimeFilterResponse {
    /// Given origin and destination points filter out points that cannot be reached within specified time limit. [Docs link](http://docs.traveltime.com/reference/time-filter)
    GivenOriginAndDestinationPointsFilterOutPointsThatCannotBeReachedWithinSpecifiedTimeLimit
    (models::ResponseTimeFilter)
    ,
    /// The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)
    TheJsonBodyReturnedUponError
    (models::ResponseError)
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum TimeFilterFastResponse {
    /// A very fast version of Time Filter. [Docs link](http://docs.traveltime.com/reference/time-filter-fast/)
    AVeryFastVersionOfTimeFilter
    (models::ResponseTimeFilterFast)
    ,
    /// The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)
    TheJsonBodyReturnedUponError
    (models::ResponseError)
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum TimeFilterPostcodeDistrictsResponse {
    /// Find districts that have a certain coverage from origin and get statistics about postcodes within such districts. [Docs link](http://docs.traveltime.com/reference/postcode-district-filter/)
    FindDistrictsThatHaveACertainCoverageFromOriginAndGetStatisticsAboutPostcodesWithinSuchDistricts
    (models::ResponseTimeFilterPostcodeDistricts)
    ,
    /// The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)
    TheJsonBodyReturnedUponError
    (models::ResponseError)
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum TimeFilterPostcodeSectorsResponse {
    /// Find sectors that have a certain coverage from origin and get statistics about postcodes within such sectors. [Docs link](http://docs.traveltime.com/reference/postcode-sector-filter/)
    FindSectorsThatHaveACertainCoverageFromOriginAndGetStatisticsAboutPostcodesWithinSuchSectors
    (models::ResponseTimeFilterPostcodeSectors)
    ,
    /// The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)
    TheJsonBodyReturnedUponError
    (models::ResponseError)
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum TimeFilterPostcodesResponse {
    /// Find reachable postcodes from origin and get statistics about such postcodes. [Docs link](http://docs.traveltime.com/reference/postcode-search/)
    FindReachablePostcodesFromOriginAndGetStatisticsAboutSuchPostcodes
    (models::ResponseTimeFilterPostcodes)
    ,
    /// The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)
    TheJsonBodyReturnedUponError
    (models::ResponseError)
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
#[must_use]
pub enum TimeMapResponse {
    /// Given origin coordinates, find shapes of zones reachable within corresponding travel time. [Docs link](http://docs.traveltime.com/reference/time-map/)
    GivenOriginCoordinates
    (models::ResponseTimeMap)
    ,
    /// The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)
    TheJsonBodyReturnedUponError
    (models::ResponseError)
}

/// API
#[async_trait]
pub trait Api<C: Send + Sync> {
    fn poll_ready(&self, _cx: &mut Context) -> Poll<Result<(), Box<dyn Error + Send + Sync + 'static>>> {
        Poll::Ready(Ok(()))
    }

    async fn geocoding_reverse_search(
        &self,
        lat: f64,
        lng: f64,
        within_country: Option<String>,
        context: &C) -> Result<GeocodingReverseSearchResponse, ApiError>;

    async fn geocoding_search(
        &self,
        query: String,
        focus_lat: Option<f64>,
        focus_lng: Option<f64>,
        within_country: Option<String>,
        context: &C) -> Result<GeocodingSearchResponse, ApiError>;

    async fn map_info(
        &self,
        context: &C) -> Result<MapInfoResponse, ApiError>;

    async fn routes(
        &self,
        request_routes: models::RequestRoutes,
        context: &C) -> Result<RoutesResponse, ApiError>;

    async fn supported_locations(
        &self,
        request_supported_locations: models::RequestSupportedLocations,
        context: &C) -> Result<SupportedLocationsResponse, ApiError>;

    async fn time_filter(
        &self,
        request_time_filter: models::RequestTimeFilter,
        context: &C) -> Result<TimeFilterResponse, ApiError>;

    async fn time_filter_fast(
        &self,
        request_time_filter_fast: models::RequestTimeFilterFast,
        context: &C) -> Result<TimeFilterFastResponse, ApiError>;

    async fn time_filter_postcode_districts(
        &self,
        request_time_filter_postcode_districts: models::RequestTimeFilterPostcodeDistricts,
        context: &C) -> Result<TimeFilterPostcodeDistrictsResponse, ApiError>;

    async fn time_filter_postcode_sectors(
        &self,
        request_time_filter_postcode_sectors: models::RequestTimeFilterPostcodeSectors,
        context: &C) -> Result<TimeFilterPostcodeSectorsResponse, ApiError>;

    async fn time_filter_postcodes(
        &self,
        request_time_filter_postcodes: models::RequestTimeFilterPostcodes,
        context: &C) -> Result<TimeFilterPostcodesResponse, ApiError>;

    async fn time_map(
        &self,
        request_time_map: models::RequestTimeMap,
        context: &C) -> Result<TimeMapResponse, ApiError>;

}

/// API where `Context` isn't passed on every API call
#[async_trait]
pub trait ApiNoContext<C: Send + Sync> {

    fn poll_ready(&self, _cx: &mut Context) -> Poll<Result<(), Box<dyn Error + Send + Sync + 'static>>>;

    fn context(&self) -> &C;

    async fn geocoding_reverse_search(
        &self,
        lat: f64,
        lng: f64,
        within_country: Option<String>,
        ) -> Result<GeocodingReverseSearchResponse, ApiError>;

    async fn geocoding_search(
        &self,
        query: String,
        focus_lat: Option<f64>,
        focus_lng: Option<f64>,
        within_country: Option<String>,
        ) -> Result<GeocodingSearchResponse, ApiError>;

    async fn map_info(
        &self,
        ) -> Result<MapInfoResponse, ApiError>;

    async fn routes(
        &self,
        request_routes: models::RequestRoutes,
        ) -> Result<RoutesResponse, ApiError>;

    async fn supported_locations(
        &self,
        request_supported_locations: models::RequestSupportedLocations,
        ) -> Result<SupportedLocationsResponse, ApiError>;

    async fn time_filter(
        &self,
        request_time_filter: models::RequestTimeFilter,
        ) -> Result<TimeFilterResponse, ApiError>;

    async fn time_filter_fast(
        &self,
        request_time_filter_fast: models::RequestTimeFilterFast,
        ) -> Result<TimeFilterFastResponse, ApiError>;

    async fn time_filter_postcode_districts(
        &self,
        request_time_filter_postcode_districts: models::RequestTimeFilterPostcodeDistricts,
        ) -> Result<TimeFilterPostcodeDistrictsResponse, ApiError>;

    async fn time_filter_postcode_sectors(
        &self,
        request_time_filter_postcode_sectors: models::RequestTimeFilterPostcodeSectors,
        ) -> Result<TimeFilterPostcodeSectorsResponse, ApiError>;

    async fn time_filter_postcodes(
        &self,
        request_time_filter_postcodes: models::RequestTimeFilterPostcodes,
        ) -> Result<TimeFilterPostcodesResponse, ApiError>;

    async fn time_map(
        &self,
        request_time_map: models::RequestTimeMap,
        ) -> Result<TimeMapResponse, ApiError>;

}

/// Trait to extend an API to make it easy to bind it to a context.
pub trait ContextWrapperExt<C: Send + Sync> where Self: Sized
{
    /// Binds this API to a context.
    fn with_context(self: Self, context: C) -> ContextWrapper<Self, C>;
}

impl<T: Api<C> + Send + Sync, C: Clone + Send + Sync> ContextWrapperExt<C> for T {
    fn with_context(self: T, context: C) -> ContextWrapper<T, C> {
         ContextWrapper::<T, C>::new(self, context)
    }
}

#[async_trait]
impl<T: Api<C> + Send + Sync, C: Clone + Send + Sync> ApiNoContext<C> for ContextWrapper<T, C> {
    fn poll_ready(&self, cx: &mut Context) -> Poll<Result<(), ServiceError>> {
        self.api().poll_ready(cx)
    }

    fn context(&self) -> &C {
        ContextWrapper::context(self)
    }

    async fn geocoding_reverse_search(
        &self,
        lat: f64,
        lng: f64,
        within_country: Option<String>,
        ) -> Result<GeocodingReverseSearchResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().geocoding_reverse_search(lat, lng, within_country, &context).await
    }

    async fn geocoding_search(
        &self,
        query: String,
        focus_lat: Option<f64>,
        focus_lng: Option<f64>,
        within_country: Option<String>,
        ) -> Result<GeocodingSearchResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().geocoding_search(query, focus_lat, focus_lng, within_country, &context).await
    }

    async fn map_info(
        &self,
        ) -> Result<MapInfoResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().map_info(&context).await
    }

    async fn routes(
        &self,
        request_routes: models::RequestRoutes,
        ) -> Result<RoutesResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().routes(request_routes, &context).await
    }

    async fn supported_locations(
        &self,
        request_supported_locations: models::RequestSupportedLocations,
        ) -> Result<SupportedLocationsResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().supported_locations(request_supported_locations, &context).await
    }

    async fn time_filter(
        &self,
        request_time_filter: models::RequestTimeFilter,
        ) -> Result<TimeFilterResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().time_filter(request_time_filter, &context).await
    }

    async fn time_filter_fast(
        &self,
        request_time_filter_fast: models::RequestTimeFilterFast,
        ) -> Result<TimeFilterFastResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().time_filter_fast(request_time_filter_fast, &context).await
    }

    async fn time_filter_postcode_districts(
        &self,
        request_time_filter_postcode_districts: models::RequestTimeFilterPostcodeDistricts,
        ) -> Result<TimeFilterPostcodeDistrictsResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().time_filter_postcode_districts(request_time_filter_postcode_districts, &context).await
    }

    async fn time_filter_postcode_sectors(
        &self,
        request_time_filter_postcode_sectors: models::RequestTimeFilterPostcodeSectors,
        ) -> Result<TimeFilterPostcodeSectorsResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().time_filter_postcode_sectors(request_time_filter_postcode_sectors, &context).await
    }

    async fn time_filter_postcodes(
        &self,
        request_time_filter_postcodes: models::RequestTimeFilterPostcodes,
        ) -> Result<TimeFilterPostcodesResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().time_filter_postcodes(request_time_filter_postcodes, &context).await
    }

    async fn time_map(
        &self,
        request_time_map: models::RequestTimeMap,
        ) -> Result<TimeMapResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().time_map(request_time_map, &context).await
    }

}


#[cfg(feature = "client")]
pub mod client;

// Re-export Client as a top-level name
#[cfg(feature = "client")]
pub use client::Client;

#[cfg(feature = "server")]
pub mod server;

// Re-export router() as a top-level name
#[cfg(feature = "server")]
pub use self::server::Service;

#[cfg(feature = "server")]
pub mod context;

pub mod models;

#[cfg(any(feature = "client", feature = "server"))]
pub(crate) mod header;
