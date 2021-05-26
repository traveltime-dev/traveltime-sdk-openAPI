# org.openapitools - Kotlin Server library for TravelTime API

## Requires

* Kotlin 1.3.10
* Maven 3.3

## Build

```
mvn clean package
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.

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

         - [org.openapitools.server.api.model.Coords](docs/Coords.md)
         - [org.openapitools.server.api.model.RequestArrivalTimePeriod](docs/RequestArrivalTimePeriod.md)
         - [org.openapitools.server.api.model.RequestLevelOfDetail](docs/RequestLevelOfDetail.md)
         - [org.openapitools.server.api.model.RequestLocation](docs/RequestLocation.md)
         - [org.openapitools.server.api.model.RequestRangeFull](docs/RequestRangeFull.md)
         - [org.openapitools.server.api.model.RequestRangeNoMaxResults](docs/RequestRangeNoMaxResults.md)
         - [org.openapitools.server.api.model.RequestRoutes](docs/RequestRoutes.md)
         - [org.openapitools.server.api.model.RequestRoutesArrivalSearch](docs/RequestRoutesArrivalSearch.md)
         - [org.openapitools.server.api.model.RequestRoutesDepartureSearch](docs/RequestRoutesDepartureSearch.md)
         - [org.openapitools.server.api.model.RequestRoutesProperty](docs/RequestRoutesProperty.md)
         - [org.openapitools.server.api.model.RequestSupportedLocations](docs/RequestSupportedLocations.md)
         - [org.openapitools.server.api.model.RequestTimeFilter](docs/RequestTimeFilter.md)
         - [org.openapitools.server.api.model.RequestTimeFilterArrivalSearch](docs/RequestTimeFilterArrivalSearch.md)
         - [org.openapitools.server.api.model.RequestTimeFilterDepartureSearch](docs/RequestTimeFilterDepartureSearch.md)
         - [org.openapitools.server.api.model.RequestTimeFilterFast](docs/RequestTimeFilterFast.md)
         - [org.openapitools.server.api.model.RequestTimeFilterFastArrivalManyToOneSearch](docs/RequestTimeFilterFastArrivalManyToOneSearch.md)
         - [org.openapitools.server.api.model.RequestTimeFilterFastArrivalOneToManySearch](docs/RequestTimeFilterFastArrivalOneToManySearch.md)
         - [org.openapitools.server.api.model.RequestTimeFilterFastArrivalSearches](docs/RequestTimeFilterFastArrivalSearches.md)
         - [org.openapitools.server.api.model.RequestTimeFilterFastProperty](docs/RequestTimeFilterFastProperty.md)
         - [org.openapitools.server.api.model.RequestTimeFilterPostcodeDistricts](docs/RequestTimeFilterPostcodeDistricts.md)
         - [org.openapitools.server.api.model.RequestTimeFilterPostcodeDistrictsArrivalSearch](docs/RequestTimeFilterPostcodeDistrictsArrivalSearch.md)
         - [org.openapitools.server.api.model.RequestTimeFilterPostcodeDistrictsDepartureSearch](docs/RequestTimeFilterPostcodeDistrictsDepartureSearch.md)
         - [org.openapitools.server.api.model.RequestTimeFilterPostcodeDistrictsProperty](docs/RequestTimeFilterPostcodeDistrictsProperty.md)
         - [org.openapitools.server.api.model.RequestTimeFilterPostcodeSectors](docs/RequestTimeFilterPostcodeSectors.md)
         - [org.openapitools.server.api.model.RequestTimeFilterPostcodeSectorsArrivalSearch](docs/RequestTimeFilterPostcodeSectorsArrivalSearch.md)
         - [org.openapitools.server.api.model.RequestTimeFilterPostcodeSectorsDepartureSearch](docs/RequestTimeFilterPostcodeSectorsDepartureSearch.md)
         - [org.openapitools.server.api.model.RequestTimeFilterPostcodeSectorsProperty](docs/RequestTimeFilterPostcodeSectorsProperty.md)
         - [org.openapitools.server.api.model.RequestTimeFilterPostcodes](docs/RequestTimeFilterPostcodes.md)
         - [org.openapitools.server.api.model.RequestTimeFilterPostcodesArrivalSearch](docs/RequestTimeFilterPostcodesArrivalSearch.md)
         - [org.openapitools.server.api.model.RequestTimeFilterPostcodesDepartureSearch](docs/RequestTimeFilterPostcodesDepartureSearch.md)
         - [org.openapitools.server.api.model.RequestTimeFilterPostcodesProperty](docs/RequestTimeFilterPostcodesProperty.md)
         - [org.openapitools.server.api.model.RequestTimeFilterProperty](docs/RequestTimeFilterProperty.md)
         - [org.openapitools.server.api.model.RequestTimeMap](docs/RequestTimeMap.md)
         - [org.openapitools.server.api.model.RequestTimeMapArrivalSearch](docs/RequestTimeMapArrivalSearch.md)
         - [org.openapitools.server.api.model.RequestTimeMapDepartureSearch](docs/RequestTimeMapDepartureSearch.md)
         - [org.openapitools.server.api.model.RequestTimeMapProperty](docs/RequestTimeMapProperty.md)
         - [org.openapitools.server.api.model.RequestTransportation](docs/RequestTransportation.md)
         - [org.openapitools.server.api.model.RequestTransportationFast](docs/RequestTransportationFast.md)
         - [org.openapitools.server.api.model.RequestUnionOnIntersection](docs/RequestUnionOnIntersection.md)
         - [org.openapitools.server.api.model.ResponseBoundingBox](docs/ResponseBoundingBox.md)
         - [org.openapitools.server.api.model.ResponseBox](docs/ResponseBox.md)
         - [org.openapitools.server.api.model.ResponseDistanceBreakdownItem](docs/ResponseDistanceBreakdownItem.md)
         - [org.openapitools.server.api.model.ResponseError](docs/ResponseError.md)
         - [org.openapitools.server.api.model.ResponseFareTicket](docs/ResponseFareTicket.md)
         - [org.openapitools.server.api.model.ResponseFares](docs/ResponseFares.md)
         - [org.openapitools.server.api.model.ResponseFaresBreakdownItem](docs/ResponseFaresBreakdownItem.md)
         - [org.openapitools.server.api.model.ResponseFaresFast](docs/ResponseFaresFast.md)
         - [org.openapitools.server.api.model.ResponseGeocoding](docs/ResponseGeocoding.md)
         - [org.openapitools.server.api.model.ResponseGeocodingGeoJsonFeature](docs/ResponseGeocodingGeoJsonFeature.md)
         - [org.openapitools.server.api.model.ResponseGeocodingGeometry](docs/ResponseGeocodingGeometry.md)
         - [org.openapitools.server.api.model.ResponseGeocodingProperties](docs/ResponseGeocodingProperties.md)
         - [org.openapitools.server.api.model.ResponseMapInfo](docs/ResponseMapInfo.md)
         - [org.openapitools.server.api.model.ResponseMapInfoFeatures](docs/ResponseMapInfoFeatures.md)
         - [org.openapitools.server.api.model.ResponseMapInfoFeaturesPublicTransport](docs/ResponseMapInfoFeaturesPublicTransport.md)
         - [org.openapitools.server.api.model.ResponseMapInfoMap](docs/ResponseMapInfoMap.md)
         - [org.openapitools.server.api.model.ResponseRoute](docs/ResponseRoute.md)
         - [org.openapitools.server.api.model.ResponseRoutePart](docs/ResponseRoutePart.md)
         - [org.openapitools.server.api.model.ResponseRoutes](docs/ResponseRoutes.md)
         - [org.openapitools.server.api.model.ResponseRoutesLocation](docs/ResponseRoutesLocation.md)
         - [org.openapitools.server.api.model.ResponseRoutesProperties](docs/ResponseRoutesProperties.md)
         - [org.openapitools.server.api.model.ResponseRoutesResult](docs/ResponseRoutesResult.md)
         - [org.openapitools.server.api.model.ResponseShape](docs/ResponseShape.md)
         - [org.openapitools.server.api.model.ResponseSupportedLocation](docs/ResponseSupportedLocation.md)
         - [org.openapitools.server.api.model.ResponseSupportedLocations](docs/ResponseSupportedLocations.md)
         - [org.openapitools.server.api.model.ResponseTimeFilter](docs/ResponseTimeFilter.md)
         - [org.openapitools.server.api.model.ResponseTimeFilterFast](docs/ResponseTimeFilterFast.md)
         - [org.openapitools.server.api.model.ResponseTimeFilterFastLocation](docs/ResponseTimeFilterFastLocation.md)
         - [org.openapitools.server.api.model.ResponseTimeFilterFastProperties](docs/ResponseTimeFilterFastProperties.md)
         - [org.openapitools.server.api.model.ResponseTimeFilterFastResult](docs/ResponseTimeFilterFastResult.md)
         - [org.openapitools.server.api.model.ResponseTimeFilterLocation](docs/ResponseTimeFilterLocation.md)
         - [org.openapitools.server.api.model.ResponseTimeFilterPostcode](docs/ResponseTimeFilterPostcode.md)
         - [org.openapitools.server.api.model.ResponseTimeFilterPostcodeDistrict](docs/ResponseTimeFilterPostcodeDistrict.md)
         - [org.openapitools.server.api.model.ResponseTimeFilterPostcodeDistrictProperties](docs/ResponseTimeFilterPostcodeDistrictProperties.md)
         - [org.openapitools.server.api.model.ResponseTimeFilterPostcodeDistricts](docs/ResponseTimeFilterPostcodeDistricts.md)
         - [org.openapitools.server.api.model.ResponseTimeFilterPostcodeDistrictsResult](docs/ResponseTimeFilterPostcodeDistrictsResult.md)
         - [org.openapitools.server.api.model.ResponseTimeFilterPostcodeSector](docs/ResponseTimeFilterPostcodeSector.md)
         - [org.openapitools.server.api.model.ResponseTimeFilterPostcodeSectorProperties](docs/ResponseTimeFilterPostcodeSectorProperties.md)
         - [org.openapitools.server.api.model.ResponseTimeFilterPostcodeSectors](docs/ResponseTimeFilterPostcodeSectors.md)
         - [org.openapitools.server.api.model.ResponseTimeFilterPostcodeSectorsResult](docs/ResponseTimeFilterPostcodeSectorsResult.md)
         - [org.openapitools.server.api.model.ResponseTimeFilterPostcodes](docs/ResponseTimeFilterPostcodes.md)
         - [org.openapitools.server.api.model.ResponseTimeFilterPostcodesProperties](docs/ResponseTimeFilterPostcodesProperties.md)
         - [org.openapitools.server.api.model.ResponseTimeFilterPostcodesResult](docs/ResponseTimeFilterPostcodesResult.md)
         - [org.openapitools.server.api.model.ResponseTimeFilterProperties](docs/ResponseTimeFilterProperties.md)
         - [org.openapitools.server.api.model.ResponseTimeFilterResult](docs/ResponseTimeFilterResult.md)
         - [org.openapitools.server.api.model.ResponseTimeMap](docs/ResponseTimeMap.md)
         - [org.openapitools.server.api.model.ResponseTimeMapBoundingBoxes](docs/ResponseTimeMapBoundingBoxes.md)
         - [org.openapitools.server.api.model.ResponseTimeMapBoundingBoxesResult](docs/ResponseTimeMapBoundingBoxesResult.md)
         - [org.openapitools.server.api.model.ResponseTimeMapProperties](docs/ResponseTimeMapProperties.md)
         - [org.openapitools.server.api.model.ResponseTimeMapResult](docs/ResponseTimeMapResult.md)
         - [org.openapitools.server.api.model.ResponseTimeMapWkt](docs/ResponseTimeMapWkt.md)
         - [org.openapitools.server.api.model.ResponseTimeMapWktResult](docs/ResponseTimeMapWktResult.md)
         - [org.openapitools.server.api.model.ResponseTransportationMode](docs/ResponseTransportationMode.md)
         - [org.openapitools.server.api.model.ResponseTravelTimeStatistics](docs/ResponseTravelTimeStatistics.md)
        

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
        
