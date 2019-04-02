# openapi
No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Build package: org.openapitools.codegen.languages.DartClientCodegen

## Requirements

Dart 1.20.0 or later OR Flutter 0.0.20 or later

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: openapi
version: 1.0.0
description: OpenAPI API client
dependencies:
  openapi:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  openapi:
    path: /path/to/openapi
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:openapi/api.dart';

// TODO Configure API key authorization: ApiKey
//openapi.api.Configuration.apiKey{'X-Api-Key'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Api-Key'} = "Bearer";
// TODO Configure API key authorization: ApplicationId
//openapi.api.Configuration.apiKey{'X-Application-Id'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//openapi.api.Configuration.apiKeyPrefix{'X-Application-Id'} = "Bearer";

var api_instance = new DefaultApi();
var focusLat = 1.2; // double | 
var focusLng = 1.2; // double | 
var withinCountry = withinCountry_example; // String | 

try {
    var result = api_instance.geocodingReverseSearch(focusLat, focusLng, withinCountry);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->geocodingReverseSearch: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.traveltimeapp.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**geocodingReverseSearch**](docs//DefaultApi.md#geocodingreversesearch) | **GET** /v4/geocoding/reverse | 
*DefaultApi* | [**geocodingSearch**](docs//DefaultApi.md#geocodingsearch) | **GET** /v4/geocoding/search | 
*DefaultApi* | [**mapInfo**](docs//DefaultApi.md#mapinfo) | **GET** /v4/map-info | 
*DefaultApi* | [**routes**](docs//DefaultApi.md#routes) | **POST** /v4/routes | 
*DefaultApi* | [**supportedLocations**](docs//DefaultApi.md#supportedlocations) | **POST** /v4/supported-locations | 
*DefaultApi* | [**timeFilter**](docs//DefaultApi.md#timefilter) | **POST** /v4/time-filter | 
*DefaultApi* | [**timeFilterFast**](docs//DefaultApi.md#timefilterfast) | **POST** /v4/time-filter/fast | 
*DefaultApi* | [**timeFilterPostcodeDistricts**](docs//DefaultApi.md#timefilterpostcodedistricts) | **POST** /v4/time-filter/postcode-districts | 
*DefaultApi* | [**timeFilterPostcodeSectors**](docs//DefaultApi.md#timefilterpostcodesectors) | **POST** /v4/time-filter/postcode-sectors | 
*DefaultApi* | [**timeFilterPostcodes**](docs//DefaultApi.md#timefilterpostcodes) | **POST** /v4/time-filter/postcodes | 
*DefaultApi* | [**timeMap**](docs//DefaultApi.md#timemap) | **POST** /v4/time-map | 


## Documentation For Models

 - [Coords](docs//Coords.md)
 - [RequestArrivalTimePeriod](docs//RequestArrivalTimePeriod.md)
 - [RequestLocation](docs//RequestLocation.md)
 - [RequestRangeFull](docs//RequestRangeFull.md)
 - [RequestRangeNoMaxResults](docs//RequestRangeNoMaxResults.md)
 - [RequestRoutes](docs//RequestRoutes.md)
 - [RequestRoutesArrivalSearch](docs//RequestRoutesArrivalSearch.md)
 - [RequestRoutesDepartureSearch](docs//RequestRoutesDepartureSearch.md)
 - [RequestRoutesProperty](docs//RequestRoutesProperty.md)
 - [RequestSupportedLocations](docs//RequestSupportedLocations.md)
 - [RequestTimeFilter](docs//RequestTimeFilter.md)
 - [RequestTimeFilterArrivalSearch](docs//RequestTimeFilterArrivalSearch.md)
 - [RequestTimeFilterDepartureSearch](docs//RequestTimeFilterDepartureSearch.md)
 - [RequestTimeFilterFast](docs//RequestTimeFilterFast.md)
 - [RequestTimeFilterFastArrivalManyToOneSearch](docs//RequestTimeFilterFastArrivalManyToOneSearch.md)
 - [RequestTimeFilterFastArrivalOneToManySearch](docs//RequestTimeFilterFastArrivalOneToManySearch.md)
 - [RequestTimeFilterFastArrivalSearches](docs//RequestTimeFilterFastArrivalSearches.md)
 - [RequestTimeFilterFastProperty](docs//RequestTimeFilterFastProperty.md)
 - [RequestTimeFilterPostcodeDistricts](docs//RequestTimeFilterPostcodeDistricts.md)
 - [RequestTimeFilterPostcodeDistrictsArrivalSearch](docs//RequestTimeFilterPostcodeDistrictsArrivalSearch.md)
 - [RequestTimeFilterPostcodeDistrictsDepartureSearch](docs//RequestTimeFilterPostcodeDistrictsDepartureSearch.md)
 - [RequestTimeFilterPostcodeDistrictsProperty](docs//RequestTimeFilterPostcodeDistrictsProperty.md)
 - [RequestTimeFilterPostcodeSectors](docs//RequestTimeFilterPostcodeSectors.md)
 - [RequestTimeFilterPostcodeSectorsArrivalSearch](docs//RequestTimeFilterPostcodeSectorsArrivalSearch.md)
 - [RequestTimeFilterPostcodeSectorsDepartureSearch](docs//RequestTimeFilterPostcodeSectorsDepartureSearch.md)
 - [RequestTimeFilterPostcodeSectorsProperty](docs//RequestTimeFilterPostcodeSectorsProperty.md)
 - [RequestTimeFilterPostcodes](docs//RequestTimeFilterPostcodes.md)
 - [RequestTimeFilterPostcodesArrivalSearch](docs//RequestTimeFilterPostcodesArrivalSearch.md)
 - [RequestTimeFilterPostcodesDepartureSearch](docs//RequestTimeFilterPostcodesDepartureSearch.md)
 - [RequestTimeFilterPostcodesProperty](docs//RequestTimeFilterPostcodesProperty.md)
 - [RequestTimeFilterProperty](docs//RequestTimeFilterProperty.md)
 - [RequestTimeMap](docs//RequestTimeMap.md)
 - [RequestTimeMapArrivalSearch](docs//RequestTimeMapArrivalSearch.md)
 - [RequestTimeMapDepartureSearch](docs//RequestTimeMapDepartureSearch.md)
 - [RequestTimeMapProperty](docs//RequestTimeMapProperty.md)
 - [RequestTransportation](docs//RequestTransportation.md)
 - [RequestTransportationFast](docs//RequestTransportationFast.md)
 - [RequestUnionOnIntersection](docs//RequestUnionOnIntersection.md)
 - [ResponseBoundingBox](docs//ResponseBoundingBox.md)
 - [ResponseBox](docs//ResponseBox.md)
 - [ResponseDistanceBreakdownItem](docs//ResponseDistanceBreakdownItem.md)
 - [ResponseError](docs//ResponseError.md)
 - [ResponseFareTicket](docs//ResponseFareTicket.md)
 - [ResponseFares](docs//ResponseFares.md)
 - [ResponseFaresBreakdownItem](docs//ResponseFaresBreakdownItem.md)
 - [ResponseFaresFast](docs//ResponseFaresFast.md)
 - [ResponseGeocoding](docs//ResponseGeocoding.md)
 - [ResponseGeocodingGeoJsonFeature](docs//ResponseGeocodingGeoJsonFeature.md)
 - [ResponseGeocodingGeometry](docs//ResponseGeocodingGeometry.md)
 - [ResponseGeocodingProperties](docs//ResponseGeocodingProperties.md)
 - [ResponseMapInfo](docs//ResponseMapInfo.md)
 - [ResponseMapInfoFeatures](docs//ResponseMapInfoFeatures.md)
 - [ResponseMapInfoFeaturesPublicTransport](docs//ResponseMapInfoFeaturesPublicTransport.md)
 - [ResponseMapInfoMap](docs//ResponseMapInfoMap.md)
 - [ResponseRoute](docs//ResponseRoute.md)
 - [ResponseRoutePart](docs//ResponseRoutePart.md)
 - [ResponseRoutes](docs//ResponseRoutes.md)
 - [ResponseRoutesLocation](docs//ResponseRoutesLocation.md)
 - [ResponseRoutesProperties](docs//ResponseRoutesProperties.md)
 - [ResponseRoutesResult](docs//ResponseRoutesResult.md)
 - [ResponseShape](docs//ResponseShape.md)
 - [ResponseSupportedLocation](docs//ResponseSupportedLocation.md)
 - [ResponseSupportedLocations](docs//ResponseSupportedLocations.md)
 - [ResponseTimeFilter](docs//ResponseTimeFilter.md)
 - [ResponseTimeFilterFast](docs//ResponseTimeFilterFast.md)
 - [ResponseTimeFilterFastLocation](docs//ResponseTimeFilterFastLocation.md)
 - [ResponseTimeFilterFastProperties](docs//ResponseTimeFilterFastProperties.md)
 - [ResponseTimeFilterFastResult](docs//ResponseTimeFilterFastResult.md)
 - [ResponseTimeFilterLocation](docs//ResponseTimeFilterLocation.md)
 - [ResponseTimeFilterPostcode](docs//ResponseTimeFilterPostcode.md)
 - [ResponseTimeFilterPostcodeDistrict](docs//ResponseTimeFilterPostcodeDistrict.md)
 - [ResponseTimeFilterPostcodeDistrictProperties](docs//ResponseTimeFilterPostcodeDistrictProperties.md)
 - [ResponseTimeFilterPostcodeDistricts](docs//ResponseTimeFilterPostcodeDistricts.md)
 - [ResponseTimeFilterPostcodeDistrictsResult](docs//ResponseTimeFilterPostcodeDistrictsResult.md)
 - [ResponseTimeFilterPostcodeSector](docs//ResponseTimeFilterPostcodeSector.md)
 - [ResponseTimeFilterPostcodeSectorProperties](docs//ResponseTimeFilterPostcodeSectorProperties.md)
 - [ResponseTimeFilterPostcodeSectors](docs//ResponseTimeFilterPostcodeSectors.md)
 - [ResponseTimeFilterPostcodeSectorsResult](docs//ResponseTimeFilterPostcodeSectorsResult.md)
 - [ResponseTimeFilterPostcodes](docs//ResponseTimeFilterPostcodes.md)
 - [ResponseTimeFilterPostcodesProperties](docs//ResponseTimeFilterPostcodesProperties.md)
 - [ResponseTimeFilterPostcodesResult](docs//ResponseTimeFilterPostcodesResult.md)
 - [ResponseTimeFilterProperties](docs//ResponseTimeFilterProperties.md)
 - [ResponseTimeFilterResult](docs//ResponseTimeFilterResult.md)
 - [ResponseTimeMap](docs//ResponseTimeMap.md)
 - [ResponseTimeMapBoundingBoxes](docs//ResponseTimeMapBoundingBoxes.md)
 - [ResponseTimeMapBoundingBoxesResult](docs//ResponseTimeMapBoundingBoxesResult.md)
 - [ResponseTimeMapProperties](docs//ResponseTimeMapProperties.md)
 - [ResponseTimeMapResult](docs//ResponseTimeMapResult.md)
 - [ResponseTimeMapWkt](docs//ResponseTimeMapWkt.md)
 - [ResponseTimeMapWktResult](docs//ResponseTimeMapWktResult.md)
 - [ResponseTransportationMode](docs//ResponseTransportationMode.md)
 - [ResponseTravelTimeStatistics](docs//ResponseTravelTimeStatistics.md)


## Documentation For Authorization


## ApiKey

- **Type**: API key
- **API key parameter name**: X-Api-Key
- **Location**: HTTP header

## ApplicationId

- **Type**: API key
- **API key parameter name**: X-Application-Id
- **Location**: HTTP header


## Author

support@igeolise.com

