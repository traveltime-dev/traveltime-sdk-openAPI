# traveltimeplatform - Kotlin client library for TravelTime Platform API

## Requires

* Kotlin 1.3.31
* Gradle 4.9

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

 - [traveltimeplatform.models.Coords](docs/Coords.md)
 - [traveltimeplatform.models.RequestArrivalTimePeriod](docs/RequestArrivalTimePeriod.md)
 - [traveltimeplatform.models.RequestLocation](docs/RequestLocation.md)
 - [traveltimeplatform.models.RequestRangeFull](docs/RequestRangeFull.md)
 - [traveltimeplatform.models.RequestRangeNoMaxResults](docs/RequestRangeNoMaxResults.md)
 - [traveltimeplatform.models.RequestRoutes](docs/RequestRoutes.md)
 - [traveltimeplatform.models.RequestRoutesArrivalSearch](docs/RequestRoutesArrivalSearch.md)
 - [traveltimeplatform.models.RequestRoutesDepartureSearch](docs/RequestRoutesDepartureSearch.md)
 - [traveltimeplatform.models.RequestRoutesProperty](docs/RequestRoutesProperty.md)
 - [traveltimeplatform.models.RequestSupportedLocations](docs/RequestSupportedLocations.md)
 - [traveltimeplatform.models.RequestTimeFilter](docs/RequestTimeFilter.md)
 - [traveltimeplatform.models.RequestTimeFilterArrivalSearch](docs/RequestTimeFilterArrivalSearch.md)
 - [traveltimeplatform.models.RequestTimeFilterDepartureSearch](docs/RequestTimeFilterDepartureSearch.md)
 - [traveltimeplatform.models.RequestTimeFilterFast](docs/RequestTimeFilterFast.md)
 - [traveltimeplatform.models.RequestTimeFilterFastArrivalManyToOneSearch](docs/RequestTimeFilterFastArrivalManyToOneSearch.md)
 - [traveltimeplatform.models.RequestTimeFilterFastArrivalOneToManySearch](docs/RequestTimeFilterFastArrivalOneToManySearch.md)
 - [traveltimeplatform.models.RequestTimeFilterFastArrivalSearches](docs/RequestTimeFilterFastArrivalSearches.md)
 - [traveltimeplatform.models.RequestTimeFilterFastProperty](docs/RequestTimeFilterFastProperty.md)
 - [traveltimeplatform.models.RequestTimeFilterPostcodeDistricts](docs/RequestTimeFilterPostcodeDistricts.md)
 - [traveltimeplatform.models.RequestTimeFilterPostcodeDistrictsArrivalSearch](docs/RequestTimeFilterPostcodeDistrictsArrivalSearch.md)
 - [traveltimeplatform.models.RequestTimeFilterPostcodeDistrictsDepartureSearch](docs/RequestTimeFilterPostcodeDistrictsDepartureSearch.md)
 - [traveltimeplatform.models.RequestTimeFilterPostcodeDistrictsProperty](docs/RequestTimeFilterPostcodeDistrictsProperty.md)
 - [traveltimeplatform.models.RequestTimeFilterPostcodeSectors](docs/RequestTimeFilterPostcodeSectors.md)
 - [traveltimeplatform.models.RequestTimeFilterPostcodeSectorsArrivalSearch](docs/RequestTimeFilterPostcodeSectorsArrivalSearch.md)
 - [traveltimeplatform.models.RequestTimeFilterPostcodeSectorsDepartureSearch](docs/RequestTimeFilterPostcodeSectorsDepartureSearch.md)
 - [traveltimeplatform.models.RequestTimeFilterPostcodeSectorsProperty](docs/RequestTimeFilterPostcodeSectorsProperty.md)
 - [traveltimeplatform.models.RequestTimeFilterPostcodes](docs/RequestTimeFilterPostcodes.md)
 - [traveltimeplatform.models.RequestTimeFilterPostcodesArrivalSearch](docs/RequestTimeFilterPostcodesArrivalSearch.md)
 - [traveltimeplatform.models.RequestTimeFilterPostcodesDepartureSearch](docs/RequestTimeFilterPostcodesDepartureSearch.md)
 - [traveltimeplatform.models.RequestTimeFilterPostcodesProperty](docs/RequestTimeFilterPostcodesProperty.md)
 - [traveltimeplatform.models.RequestTimeFilterProperty](docs/RequestTimeFilterProperty.md)
 - [traveltimeplatform.models.RequestTimeMap](docs/RequestTimeMap.md)
 - [traveltimeplatform.models.RequestTimeMapArrivalSearch](docs/RequestTimeMapArrivalSearch.md)
 - [traveltimeplatform.models.RequestTimeMapDepartureSearch](docs/RequestTimeMapDepartureSearch.md)
 - [traveltimeplatform.models.RequestTimeMapProperty](docs/RequestTimeMapProperty.md)
 - [traveltimeplatform.models.RequestTransportation](docs/RequestTransportation.md)
 - [traveltimeplatform.models.RequestTransportationFast](docs/RequestTransportationFast.md)
 - [traveltimeplatform.models.RequestUnionOnIntersection](docs/RequestUnionOnIntersection.md)
 - [traveltimeplatform.models.ResponseBoundingBox](docs/ResponseBoundingBox.md)
 - [traveltimeplatform.models.ResponseBox](docs/ResponseBox.md)
 - [traveltimeplatform.models.ResponseDistanceBreakdownItem](docs/ResponseDistanceBreakdownItem.md)
 - [traveltimeplatform.models.ResponseError](docs/ResponseError.md)
 - [traveltimeplatform.models.ResponseFareTicket](docs/ResponseFareTicket.md)
 - [traveltimeplatform.models.ResponseFares](docs/ResponseFares.md)
 - [traveltimeplatform.models.ResponseFaresBreakdownItem](docs/ResponseFaresBreakdownItem.md)
 - [traveltimeplatform.models.ResponseFaresFast](docs/ResponseFaresFast.md)
 - [traveltimeplatform.models.ResponseGeocoding](docs/ResponseGeocoding.md)
 - [traveltimeplatform.models.ResponseGeocodingGeoJsonFeature](docs/ResponseGeocodingGeoJsonFeature.md)
 - [traveltimeplatform.models.ResponseGeocodingGeometry](docs/ResponseGeocodingGeometry.md)
 - [traveltimeplatform.models.ResponseGeocodingProperties](docs/ResponseGeocodingProperties.md)
 - [traveltimeplatform.models.ResponseMapInfo](docs/ResponseMapInfo.md)
 - [traveltimeplatform.models.ResponseMapInfoFeatures](docs/ResponseMapInfoFeatures.md)
 - [traveltimeplatform.models.ResponseMapInfoFeaturesPublicTransport](docs/ResponseMapInfoFeaturesPublicTransport.md)
 - [traveltimeplatform.models.ResponseMapInfoMap](docs/ResponseMapInfoMap.md)
 - [traveltimeplatform.models.ResponseRoute](docs/ResponseRoute.md)
 - [traveltimeplatform.models.ResponseRoutePart](docs/ResponseRoutePart.md)
 - [traveltimeplatform.models.ResponseRoutes](docs/ResponseRoutes.md)
 - [traveltimeplatform.models.ResponseRoutesLocation](docs/ResponseRoutesLocation.md)
 - [traveltimeplatform.models.ResponseRoutesProperties](docs/ResponseRoutesProperties.md)
 - [traveltimeplatform.models.ResponseRoutesResult](docs/ResponseRoutesResult.md)
 - [traveltimeplatform.models.ResponseShape](docs/ResponseShape.md)
 - [traveltimeplatform.models.ResponseSupportedLocation](docs/ResponseSupportedLocation.md)
 - [traveltimeplatform.models.ResponseSupportedLocations](docs/ResponseSupportedLocations.md)
 - [traveltimeplatform.models.ResponseTimeFilter](docs/ResponseTimeFilter.md)
 - [traveltimeplatform.models.ResponseTimeFilterFast](docs/ResponseTimeFilterFast.md)
 - [traveltimeplatform.models.ResponseTimeFilterFastLocation](docs/ResponseTimeFilterFastLocation.md)
 - [traveltimeplatform.models.ResponseTimeFilterFastProperties](docs/ResponseTimeFilterFastProperties.md)
 - [traveltimeplatform.models.ResponseTimeFilterFastResult](docs/ResponseTimeFilterFastResult.md)
 - [traveltimeplatform.models.ResponseTimeFilterLocation](docs/ResponseTimeFilterLocation.md)
 - [traveltimeplatform.models.ResponseTimeFilterPostcode](docs/ResponseTimeFilterPostcode.md)
 - [traveltimeplatform.models.ResponseTimeFilterPostcodeDistrict](docs/ResponseTimeFilterPostcodeDistrict.md)
 - [traveltimeplatform.models.ResponseTimeFilterPostcodeDistrictProperties](docs/ResponseTimeFilterPostcodeDistrictProperties.md)
 - [traveltimeplatform.models.ResponseTimeFilterPostcodeDistricts](docs/ResponseTimeFilterPostcodeDistricts.md)
 - [traveltimeplatform.models.ResponseTimeFilterPostcodeDistrictsResult](docs/ResponseTimeFilterPostcodeDistrictsResult.md)
 - [traveltimeplatform.models.ResponseTimeFilterPostcodeSector](docs/ResponseTimeFilterPostcodeSector.md)
 - [traveltimeplatform.models.ResponseTimeFilterPostcodeSectorProperties](docs/ResponseTimeFilterPostcodeSectorProperties.md)
 - [traveltimeplatform.models.ResponseTimeFilterPostcodeSectors](docs/ResponseTimeFilterPostcodeSectors.md)
 - [traveltimeplatform.models.ResponseTimeFilterPostcodeSectorsResult](docs/ResponseTimeFilterPostcodeSectorsResult.md)
 - [traveltimeplatform.models.ResponseTimeFilterPostcodes](docs/ResponseTimeFilterPostcodes.md)
 - [traveltimeplatform.models.ResponseTimeFilterPostcodesProperties](docs/ResponseTimeFilterPostcodesProperties.md)
 - [traveltimeplatform.models.ResponseTimeFilterPostcodesResult](docs/ResponseTimeFilterPostcodesResult.md)
 - [traveltimeplatform.models.ResponseTimeFilterProperties](docs/ResponseTimeFilterProperties.md)
 - [traveltimeplatform.models.ResponseTimeFilterResult](docs/ResponseTimeFilterResult.md)
 - [traveltimeplatform.models.ResponseTimeMap](docs/ResponseTimeMap.md)
 - [traveltimeplatform.models.ResponseTimeMapBoundingBoxes](docs/ResponseTimeMapBoundingBoxes.md)
 - [traveltimeplatform.models.ResponseTimeMapBoundingBoxesResult](docs/ResponseTimeMapBoundingBoxesResult.md)
 - [traveltimeplatform.models.ResponseTimeMapProperties](docs/ResponseTimeMapProperties.md)
 - [traveltimeplatform.models.ResponseTimeMapResult](docs/ResponseTimeMapResult.md)
 - [traveltimeplatform.models.ResponseTimeMapWkt](docs/ResponseTimeMapWkt.md)
 - [traveltimeplatform.models.ResponseTimeMapWktResult](docs/ResponseTimeMapWktResult.md)
 - [traveltimeplatform.models.ResponseTransportationMode](docs/ResponseTransportationMode.md)
 - [traveltimeplatform.models.ResponseTravelTimeStatistics](docs/ResponseTravelTimeStatistics.md)


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

