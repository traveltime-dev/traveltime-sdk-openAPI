# org.openapitools.client - Kotlin client library for TravelTime API

## Requires

* Kotlin 1.4.30
* Gradle 6.8.3

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://api.traveltimeapp.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**geocodingReverseSearch**](docs/DefaultApi.md#geocodingreversesearch) | **GET** /v4/geocoding/reverse | 
*DefaultApi* | [**geocodingSearch**](docs/DefaultApi.md#geocodingsearch) | **GET** /v4/geocoding/search | 
*DefaultApi* | [**mapInfo**](docs/DefaultApi.md#mapinfo) | **GET** /v4/map-info | 
*DefaultApi* | [**routes**](docs/DefaultApi.md#routes) | **POST** /v4/routes | 
*DefaultApi* | [**supportedLocations**](docs/DefaultApi.md#supportedlocations) | **POST** /v4/supported-locations | 
*DefaultApi* | [**timeFilter**](docs/DefaultApi.md#timefilter) | **POST** /v4/time-filter | 
*DefaultApi* | [**timeFilterFast**](docs/DefaultApi.md#timefilterfast) | **POST** /v4/time-filter/fast | 
*DefaultApi* | [**timeFilterPostcodeDistricts**](docs/DefaultApi.md#timefilterpostcodedistricts) | **POST** /v4/time-filter/postcode-districts | 
*DefaultApi* | [**timeFilterPostcodeSectors**](docs/DefaultApi.md#timefilterpostcodesectors) | **POST** /v4/time-filter/postcode-sectors | 
*DefaultApi* | [**timeFilterPostcodes**](docs/DefaultApi.md#timefilterpostcodes) | **POST** /v4/time-filter/postcodes | 
*DefaultApi* | [**timeMap**](docs/DefaultApi.md#timemap) | **POST** /v4/time-map | 


<a name="documentation-for-models"></a>
## Documentation for Models

 - [org.openapitools.client.models.Coords](docs/Coords.md)
 - [org.openapitools.client.models.RequestArrivalTimePeriod](docs/RequestArrivalTimePeriod.md)
 - [org.openapitools.client.models.RequestLevelOfDetail](docs/RequestLevelOfDetail.md)
 - [org.openapitools.client.models.RequestLocation](docs/RequestLocation.md)
 - [org.openapitools.client.models.RequestRangeFull](docs/RequestRangeFull.md)
 - [org.openapitools.client.models.RequestRangeNoMaxResults](docs/RequestRangeNoMaxResults.md)
 - [org.openapitools.client.models.RequestRoutes](docs/RequestRoutes.md)
 - [org.openapitools.client.models.RequestRoutesArrivalSearch](docs/RequestRoutesArrivalSearch.md)
 - [org.openapitools.client.models.RequestRoutesDepartureSearch](docs/RequestRoutesDepartureSearch.md)
 - [org.openapitools.client.models.RequestRoutesProperty](docs/RequestRoutesProperty.md)
 - [org.openapitools.client.models.RequestSupportedLocations](docs/RequestSupportedLocations.md)
 - [org.openapitools.client.models.RequestTimeFilter](docs/RequestTimeFilter.md)
 - [org.openapitools.client.models.RequestTimeFilterArrivalSearch](docs/RequestTimeFilterArrivalSearch.md)
 - [org.openapitools.client.models.RequestTimeFilterDepartureSearch](docs/RequestTimeFilterDepartureSearch.md)
 - [org.openapitools.client.models.RequestTimeFilterFast](docs/RequestTimeFilterFast.md)
 - [org.openapitools.client.models.RequestTimeFilterFastArrivalManyToOneSearch](docs/RequestTimeFilterFastArrivalManyToOneSearch.md)
 - [org.openapitools.client.models.RequestTimeFilterFastArrivalOneToManySearch](docs/RequestTimeFilterFastArrivalOneToManySearch.md)
 - [org.openapitools.client.models.RequestTimeFilterFastArrivalSearches](docs/RequestTimeFilterFastArrivalSearches.md)
 - [org.openapitools.client.models.RequestTimeFilterFastProperty](docs/RequestTimeFilterFastProperty.md)
 - [org.openapitools.client.models.RequestTimeFilterPostcodeDistricts](docs/RequestTimeFilterPostcodeDistricts.md)
 - [org.openapitools.client.models.RequestTimeFilterPostcodeDistrictsArrivalSearch](docs/RequestTimeFilterPostcodeDistrictsArrivalSearch.md)
 - [org.openapitools.client.models.RequestTimeFilterPostcodeDistrictsDepartureSearch](docs/RequestTimeFilterPostcodeDistrictsDepartureSearch.md)
 - [org.openapitools.client.models.RequestTimeFilterPostcodeDistrictsProperty](docs/RequestTimeFilterPostcodeDistrictsProperty.md)
 - [org.openapitools.client.models.RequestTimeFilterPostcodeSectors](docs/RequestTimeFilterPostcodeSectors.md)
 - [org.openapitools.client.models.RequestTimeFilterPostcodeSectorsArrivalSearch](docs/RequestTimeFilterPostcodeSectorsArrivalSearch.md)
 - [org.openapitools.client.models.RequestTimeFilterPostcodeSectorsDepartureSearch](docs/RequestTimeFilterPostcodeSectorsDepartureSearch.md)
 - [org.openapitools.client.models.RequestTimeFilterPostcodeSectorsProperty](docs/RequestTimeFilterPostcodeSectorsProperty.md)
 - [org.openapitools.client.models.RequestTimeFilterPostcodes](docs/RequestTimeFilterPostcodes.md)
 - [org.openapitools.client.models.RequestTimeFilterPostcodesArrivalSearch](docs/RequestTimeFilterPostcodesArrivalSearch.md)
 - [org.openapitools.client.models.RequestTimeFilterPostcodesDepartureSearch](docs/RequestTimeFilterPostcodesDepartureSearch.md)
 - [org.openapitools.client.models.RequestTimeFilterPostcodesProperty](docs/RequestTimeFilterPostcodesProperty.md)
 - [org.openapitools.client.models.RequestTimeFilterProperty](docs/RequestTimeFilterProperty.md)
 - [org.openapitools.client.models.RequestTimeMap](docs/RequestTimeMap.md)
 - [org.openapitools.client.models.RequestTimeMapArrivalSearch](docs/RequestTimeMapArrivalSearch.md)
 - [org.openapitools.client.models.RequestTimeMapDepartureSearch](docs/RequestTimeMapDepartureSearch.md)
 - [org.openapitools.client.models.RequestTimeMapProperty](docs/RequestTimeMapProperty.md)
 - [org.openapitools.client.models.RequestTransportation](docs/RequestTransportation.md)
 - [org.openapitools.client.models.RequestTransportationFast](docs/RequestTransportationFast.md)
 - [org.openapitools.client.models.RequestUnionOnIntersection](docs/RequestUnionOnIntersection.md)
 - [org.openapitools.client.models.ResponseBoundingBox](docs/ResponseBoundingBox.md)
 - [org.openapitools.client.models.ResponseBox](docs/ResponseBox.md)
 - [org.openapitools.client.models.ResponseDistanceBreakdownItem](docs/ResponseDistanceBreakdownItem.md)
 - [org.openapitools.client.models.ResponseError](docs/ResponseError.md)
 - [org.openapitools.client.models.ResponseFareTicket](docs/ResponseFareTicket.md)
 - [org.openapitools.client.models.ResponseFares](docs/ResponseFares.md)
 - [org.openapitools.client.models.ResponseFaresBreakdownItem](docs/ResponseFaresBreakdownItem.md)
 - [org.openapitools.client.models.ResponseFaresFast](docs/ResponseFaresFast.md)
 - [org.openapitools.client.models.ResponseGeocoding](docs/ResponseGeocoding.md)
 - [org.openapitools.client.models.ResponseGeocodingGeoJsonFeature](docs/ResponseGeocodingGeoJsonFeature.md)
 - [org.openapitools.client.models.ResponseGeocodingGeometry](docs/ResponseGeocodingGeometry.md)
 - [org.openapitools.client.models.ResponseGeocodingProperties](docs/ResponseGeocodingProperties.md)
 - [org.openapitools.client.models.ResponseMapInfo](docs/ResponseMapInfo.md)
 - [org.openapitools.client.models.ResponseMapInfoFeatures](docs/ResponseMapInfoFeatures.md)
 - [org.openapitools.client.models.ResponseMapInfoFeaturesPublicTransport](docs/ResponseMapInfoFeaturesPublicTransport.md)
 - [org.openapitools.client.models.ResponseMapInfoMap](docs/ResponseMapInfoMap.md)
 - [org.openapitools.client.models.ResponseRoute](docs/ResponseRoute.md)
 - [org.openapitools.client.models.ResponseRoutePart](docs/ResponseRoutePart.md)
 - [org.openapitools.client.models.ResponseRoutes](docs/ResponseRoutes.md)
 - [org.openapitools.client.models.ResponseRoutesLocation](docs/ResponseRoutesLocation.md)
 - [org.openapitools.client.models.ResponseRoutesProperties](docs/ResponseRoutesProperties.md)
 - [org.openapitools.client.models.ResponseRoutesResult](docs/ResponseRoutesResult.md)
 - [org.openapitools.client.models.ResponseShape](docs/ResponseShape.md)
 - [org.openapitools.client.models.ResponseSupportedLocation](docs/ResponseSupportedLocation.md)
 - [org.openapitools.client.models.ResponseSupportedLocations](docs/ResponseSupportedLocations.md)
 - [org.openapitools.client.models.ResponseTimeFilter](docs/ResponseTimeFilter.md)
 - [org.openapitools.client.models.ResponseTimeFilterFast](docs/ResponseTimeFilterFast.md)
 - [org.openapitools.client.models.ResponseTimeFilterFastLocation](docs/ResponseTimeFilterFastLocation.md)
 - [org.openapitools.client.models.ResponseTimeFilterFastProperties](docs/ResponseTimeFilterFastProperties.md)
 - [org.openapitools.client.models.ResponseTimeFilterFastResult](docs/ResponseTimeFilterFastResult.md)
 - [org.openapitools.client.models.ResponseTimeFilterLocation](docs/ResponseTimeFilterLocation.md)
 - [org.openapitools.client.models.ResponseTimeFilterPostcode](docs/ResponseTimeFilterPostcode.md)
 - [org.openapitools.client.models.ResponseTimeFilterPostcodeDistrict](docs/ResponseTimeFilterPostcodeDistrict.md)
 - [org.openapitools.client.models.ResponseTimeFilterPostcodeDistrictProperties](docs/ResponseTimeFilterPostcodeDistrictProperties.md)
 - [org.openapitools.client.models.ResponseTimeFilterPostcodeDistricts](docs/ResponseTimeFilterPostcodeDistricts.md)
 - [org.openapitools.client.models.ResponseTimeFilterPostcodeDistrictsResult](docs/ResponseTimeFilterPostcodeDistrictsResult.md)
 - [org.openapitools.client.models.ResponseTimeFilterPostcodeSector](docs/ResponseTimeFilterPostcodeSector.md)
 - [org.openapitools.client.models.ResponseTimeFilterPostcodeSectorProperties](docs/ResponseTimeFilterPostcodeSectorProperties.md)
 - [org.openapitools.client.models.ResponseTimeFilterPostcodeSectors](docs/ResponseTimeFilterPostcodeSectors.md)
 - [org.openapitools.client.models.ResponseTimeFilterPostcodeSectorsResult](docs/ResponseTimeFilterPostcodeSectorsResult.md)
 - [org.openapitools.client.models.ResponseTimeFilterPostcodes](docs/ResponseTimeFilterPostcodes.md)
 - [org.openapitools.client.models.ResponseTimeFilterPostcodesProperties](docs/ResponseTimeFilterPostcodesProperties.md)
 - [org.openapitools.client.models.ResponseTimeFilterPostcodesResult](docs/ResponseTimeFilterPostcodesResult.md)
 - [org.openapitools.client.models.ResponseTimeFilterProperties](docs/ResponseTimeFilterProperties.md)
 - [org.openapitools.client.models.ResponseTimeFilterResult](docs/ResponseTimeFilterResult.md)
 - [org.openapitools.client.models.ResponseTimeMap](docs/ResponseTimeMap.md)
 - [org.openapitools.client.models.ResponseTimeMapBoundingBoxes](docs/ResponseTimeMapBoundingBoxes.md)
 - [org.openapitools.client.models.ResponseTimeMapBoundingBoxesResult](docs/ResponseTimeMapBoundingBoxesResult.md)
 - [org.openapitools.client.models.ResponseTimeMapProperties](docs/ResponseTimeMapProperties.md)
 - [org.openapitools.client.models.ResponseTimeMapResult](docs/ResponseTimeMapResult.md)
 - [org.openapitools.client.models.ResponseTimeMapWkt](docs/ResponseTimeMapWkt.md)
 - [org.openapitools.client.models.ResponseTimeMapWktResult](docs/ResponseTimeMapWktResult.md)
 - [org.openapitools.client.models.ResponseTransportationMode](docs/ResponseTransportationMode.md)
 - [org.openapitools.client.models.ResponseTravelTimeStatistics](docs/ResponseTravelTimeStatistics.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="ApiKey"></a>
### ApiKey

- **Type**: API key
- **API key parameter name**: X-Api-Key
- **Location**: HTTP header

<a name="ApplicationId"></a>
### ApplicationId

- **Type**: API key
- **API key parameter name**: X-Application-Id
- **Location**: HTTP header

