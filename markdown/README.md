# Documentation for TravelTime API

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://api.traveltimeapp.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**geocodingReverseSearch**](Apis/DefaultApi.md#geocodingreversesearch) | **GET** /v4/geocoding/reverse | 
*DefaultApi* | [**geocodingSearch**](Apis/DefaultApi.md#geocodingsearch) | **GET** /v4/geocoding/search | 
*DefaultApi* | [**mapInfo**](Apis/DefaultApi.md#mapinfo) | **GET** /v4/map-info | 
*DefaultApi* | [**routes**](Apis/DefaultApi.md#routes) | **POST** /v4/routes | 
*DefaultApi* | [**supportedLocations**](Apis/DefaultApi.md#supportedlocations) | **POST** /v4/supported-locations | 
*DefaultApi* | [**timeFilter**](Apis/DefaultApi.md#timefilter) | **POST** /v4/time-filter | 
*DefaultApi* | [**timeFilterFast**](Apis/DefaultApi.md#timefilterfast) | **POST** /v4/time-filter/fast | 
*DefaultApi* | [**timeFilterPostcodeDistricts**](Apis/DefaultApi.md#timefilterpostcodedistricts) | **POST** /v4/time-filter/postcode-districts | 
*DefaultApi* | [**timeFilterPostcodeSectors**](Apis/DefaultApi.md#timefilterpostcodesectors) | **POST** /v4/time-filter/postcode-sectors | 
*DefaultApi* | [**timeFilterPostcodes**](Apis/DefaultApi.md#timefilterpostcodes) | **POST** /v4/time-filter/postcodes | 
*DefaultApi* | [**timeMap**](Apis/DefaultApi.md#timemap) | **POST** /v4/time-map | 


<a name="documentation-for-models"></a>
## Documentation for Models

 - [Coords](./Models/Coords.md)
 - [RequestArrivalTimePeriod](./Models/RequestArrivalTimePeriod.md)
 - [RequestLocation](./Models/RequestLocation.md)
 - [RequestRangeFull](./Models/RequestRangeFull.md)
 - [RequestRangeNoMaxResults](./Models/RequestRangeNoMaxResults.md)
 - [RequestRoutes](./Models/RequestRoutes.md)
 - [RequestRoutesArrivalSearch](./Models/RequestRoutesArrivalSearch.md)
 - [RequestRoutesDepartureSearch](./Models/RequestRoutesDepartureSearch.md)
 - [RequestRoutesProperty](./Models/RequestRoutesProperty.md)
 - [RequestSupportedLocations](./Models/RequestSupportedLocations.md)
 - [RequestTimeFilter](./Models/RequestTimeFilter.md)
 - [RequestTimeFilterArrivalSearch](./Models/RequestTimeFilterArrivalSearch.md)
 - [RequestTimeFilterDepartureSearch](./Models/RequestTimeFilterDepartureSearch.md)
 - [RequestTimeFilterFast](./Models/RequestTimeFilterFast.md)
 - [RequestTimeFilterFastArrivalManyToOneSearch](./Models/RequestTimeFilterFastArrivalManyToOneSearch.md)
 - [RequestTimeFilterFastArrivalOneToManySearch](./Models/RequestTimeFilterFastArrivalOneToManySearch.md)
 - [RequestTimeFilterFastArrivalSearches](./Models/RequestTimeFilterFastArrivalSearches.md)
 - [RequestTimeFilterFastProperty](./Models/RequestTimeFilterFastProperty.md)
 - [RequestTimeFilterPostcodeDistricts](./Models/RequestTimeFilterPostcodeDistricts.md)
 - [RequestTimeFilterPostcodeDistrictsArrivalSearch](./Models/RequestTimeFilterPostcodeDistrictsArrivalSearch.md)
 - [RequestTimeFilterPostcodeDistrictsDepartureSearch](./Models/RequestTimeFilterPostcodeDistrictsDepartureSearch.md)
 - [RequestTimeFilterPostcodeDistrictsProperty](./Models/RequestTimeFilterPostcodeDistrictsProperty.md)
 - [RequestTimeFilterPostcodeSectors](./Models/RequestTimeFilterPostcodeSectors.md)
 - [RequestTimeFilterPostcodeSectorsArrivalSearch](./Models/RequestTimeFilterPostcodeSectorsArrivalSearch.md)
 - [RequestTimeFilterPostcodeSectorsDepartureSearch](./Models/RequestTimeFilterPostcodeSectorsDepartureSearch.md)
 - [RequestTimeFilterPostcodeSectorsProperty](./Models/RequestTimeFilterPostcodeSectorsProperty.md)
 - [RequestTimeFilterPostcodes](./Models/RequestTimeFilterPostcodes.md)
 - [RequestTimeFilterPostcodesArrivalSearch](./Models/RequestTimeFilterPostcodesArrivalSearch.md)
 - [RequestTimeFilterPostcodesDepartureSearch](./Models/RequestTimeFilterPostcodesDepartureSearch.md)
 - [RequestTimeFilterPostcodesProperty](./Models/RequestTimeFilterPostcodesProperty.md)
 - [RequestTimeFilterProperty](./Models/RequestTimeFilterProperty.md)
 - [RequestTimeMap](./Models/RequestTimeMap.md)
 - [RequestTimeMapArrivalSearch](./Models/RequestTimeMapArrivalSearch.md)
 - [RequestTimeMapDepartureSearch](./Models/RequestTimeMapDepartureSearch.md)
 - [RequestTimeMapProperty](./Models/RequestTimeMapProperty.md)
 - [RequestTransportation](./Models/RequestTransportation.md)
 - [RequestTransportationFast](./Models/RequestTransportationFast.md)
 - [RequestUnionOnIntersection](./Models/RequestUnionOnIntersection.md)
 - [ResponseBoundingBox](./Models/ResponseBoundingBox.md)
 - [ResponseBox](./Models/ResponseBox.md)
 - [ResponseDistanceBreakdownItem](./Models/ResponseDistanceBreakdownItem.md)
 - [ResponseError](./Models/ResponseError.md)
 - [ResponseFareTicket](./Models/ResponseFareTicket.md)
 - [ResponseFares](./Models/ResponseFares.md)
 - [ResponseFaresBreakdownItem](./Models/ResponseFaresBreakdownItem.md)
 - [ResponseFaresFast](./Models/ResponseFaresFast.md)
 - [ResponseGeocoding](./Models/ResponseGeocoding.md)
 - [ResponseGeocodingGeoJsonFeature](./Models/ResponseGeocodingGeoJsonFeature.md)
 - [ResponseGeocodingGeometry](./Models/ResponseGeocodingGeometry.md)
 - [ResponseGeocodingProperties](./Models/ResponseGeocodingProperties.md)
 - [ResponseMapInfo](./Models/ResponseMapInfo.md)
 - [ResponseMapInfoFeatures](./Models/ResponseMapInfoFeatures.md)
 - [ResponseMapInfoFeaturesPublicTransport](./Models/ResponseMapInfoFeaturesPublicTransport.md)
 - [ResponseMapInfoMap](./Models/ResponseMapInfoMap.md)
 - [ResponseRoute](./Models/ResponseRoute.md)
 - [ResponseRoutePart](./Models/ResponseRoutePart.md)
 - [ResponseRoutes](./Models/ResponseRoutes.md)
 - [ResponseRoutesLocation](./Models/ResponseRoutesLocation.md)
 - [ResponseRoutesProperties](./Models/ResponseRoutesProperties.md)
 - [ResponseRoutesResult](./Models/ResponseRoutesResult.md)
 - [ResponseShape](./Models/ResponseShape.md)
 - [ResponseSupportedLocation](./Models/ResponseSupportedLocation.md)
 - [ResponseSupportedLocations](./Models/ResponseSupportedLocations.md)
 - [ResponseTimeFilter](./Models/ResponseTimeFilter.md)
 - [ResponseTimeFilterFast](./Models/ResponseTimeFilterFast.md)
 - [ResponseTimeFilterFastLocation](./Models/ResponseTimeFilterFastLocation.md)
 - [ResponseTimeFilterFastProperties](./Models/ResponseTimeFilterFastProperties.md)
 - [ResponseTimeFilterFastResult](./Models/ResponseTimeFilterFastResult.md)
 - [ResponseTimeFilterLocation](./Models/ResponseTimeFilterLocation.md)
 - [ResponseTimeFilterPostcode](./Models/ResponseTimeFilterPostcode.md)
 - [ResponseTimeFilterPostcodeDistrict](./Models/ResponseTimeFilterPostcodeDistrict.md)
 - [ResponseTimeFilterPostcodeDistrictProperties](./Models/ResponseTimeFilterPostcodeDistrictProperties.md)
 - [ResponseTimeFilterPostcodeDistricts](./Models/ResponseTimeFilterPostcodeDistricts.md)
 - [ResponseTimeFilterPostcodeDistrictsResult](./Models/ResponseTimeFilterPostcodeDistrictsResult.md)
 - [ResponseTimeFilterPostcodeSector](./Models/ResponseTimeFilterPostcodeSector.md)
 - [ResponseTimeFilterPostcodeSectorProperties](./Models/ResponseTimeFilterPostcodeSectorProperties.md)
 - [ResponseTimeFilterPostcodeSectors](./Models/ResponseTimeFilterPostcodeSectors.md)
 - [ResponseTimeFilterPostcodeSectorsResult](./Models/ResponseTimeFilterPostcodeSectorsResult.md)
 - [ResponseTimeFilterPostcodes](./Models/ResponseTimeFilterPostcodes.md)
 - [ResponseTimeFilterPostcodesProperties](./Models/ResponseTimeFilterPostcodesProperties.md)
 - [ResponseTimeFilterPostcodesResult](./Models/ResponseTimeFilterPostcodesResult.md)
 - [ResponseTimeFilterProperties](./Models/ResponseTimeFilterProperties.md)
 - [ResponseTimeFilterResult](./Models/ResponseTimeFilterResult.md)
 - [ResponseTimeMap](./Models/ResponseTimeMap.md)
 - [ResponseTimeMapBoundingBoxes](./Models/ResponseTimeMapBoundingBoxes.md)
 - [ResponseTimeMapBoundingBoxesResult](./Models/ResponseTimeMapBoundingBoxesResult.md)
 - [ResponseTimeMapProperties](./Models/ResponseTimeMapProperties.md)
 - [ResponseTimeMapResult](./Models/ResponseTimeMapResult.md)
 - [ResponseTimeMapWkt](./Models/ResponseTimeMapWkt.md)
 - [ResponseTimeMapWktResult](./Models/ResponseTimeMapWktResult.md)
 - [ResponseTransportationMode](./Models/ResponseTransportationMode.md)
 - [ResponseTravelTimeStatistics](./Models/ResponseTravelTimeStatistics.md)


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

