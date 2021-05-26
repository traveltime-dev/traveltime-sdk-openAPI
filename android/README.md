# openapi-android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>org.openapitools</groupId>
    <artifactId>openapi-android-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "org.openapitools:openapi-android-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/openapi-android-client-1.0.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import org.openapitools.client.api.DefaultApi;

public class DefaultApiExample {

    public static void main(String[] args) {
        DefaultApi apiInstance = new DefaultApi();
        Double lat = null; // Double | 
        Double lng = null; // Double | 
        String withinCountry = null; // String | 
        try {
            ResponseGeocoding result = apiInstance.geocodingReverseSearch(lat, lng, withinCountry);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling DefaultApi#geocodingReverseSearch");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.traveltimeapp.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**geocodingReverseSearch**](docs/DefaultApi.md#geocodingReverseSearch) | **GET** /v4/geocoding/reverse | 
*DefaultApi* | [**geocodingSearch**](docs/DefaultApi.md#geocodingSearch) | **GET** /v4/geocoding/search | 
*DefaultApi* | [**mapInfo**](docs/DefaultApi.md#mapInfo) | **GET** /v4/map-info | 
*DefaultApi* | [**routes**](docs/DefaultApi.md#routes) | **POST** /v4/routes | 
*DefaultApi* | [**supportedLocations**](docs/DefaultApi.md#supportedLocations) | **POST** /v4/supported-locations | 
*DefaultApi* | [**timeFilter**](docs/DefaultApi.md#timeFilter) | **POST** /v4/time-filter | 
*DefaultApi* | [**timeFilterFast**](docs/DefaultApi.md#timeFilterFast) | **POST** /v4/time-filter/fast | 
*DefaultApi* | [**timeFilterPostcodeDistricts**](docs/DefaultApi.md#timeFilterPostcodeDistricts) | **POST** /v4/time-filter/postcode-districts | 
*DefaultApi* | [**timeFilterPostcodeSectors**](docs/DefaultApi.md#timeFilterPostcodeSectors) | **POST** /v4/time-filter/postcode-sectors | 
*DefaultApi* | [**timeFilterPostcodes**](docs/DefaultApi.md#timeFilterPostcodes) | **POST** /v4/time-filter/postcodes | 
*DefaultApi* | [**timeMap**](docs/DefaultApi.md#timeMap) | **POST** /v4/time-map | 


## Documentation for Models

 - [Coords](docs/Coords.md)
 - [RequestArrivalTimePeriod](docs/RequestArrivalTimePeriod.md)
 - [RequestLevelOfDetail](docs/RequestLevelOfDetail.md)
 - [RequestLocation](docs/RequestLocation.md)
 - [RequestRangeFull](docs/RequestRangeFull.md)
 - [RequestRangeNoMaxResults](docs/RequestRangeNoMaxResults.md)
 - [RequestRoutes](docs/RequestRoutes.md)
 - [RequestRoutesArrivalSearch](docs/RequestRoutesArrivalSearch.md)
 - [RequestRoutesDepartureSearch](docs/RequestRoutesDepartureSearch.md)
 - [RequestRoutesProperty](docs/RequestRoutesProperty.md)
 - [RequestSupportedLocations](docs/RequestSupportedLocations.md)
 - [RequestTimeFilter](docs/RequestTimeFilter.md)
 - [RequestTimeFilterArrivalSearch](docs/RequestTimeFilterArrivalSearch.md)
 - [RequestTimeFilterDepartureSearch](docs/RequestTimeFilterDepartureSearch.md)
 - [RequestTimeFilterFast](docs/RequestTimeFilterFast.md)
 - [RequestTimeFilterFastArrivalManyToOneSearch](docs/RequestTimeFilterFastArrivalManyToOneSearch.md)
 - [RequestTimeFilterFastArrivalOneToManySearch](docs/RequestTimeFilterFastArrivalOneToManySearch.md)
 - [RequestTimeFilterFastArrivalSearches](docs/RequestTimeFilterFastArrivalSearches.md)
 - [RequestTimeFilterFastProperty](docs/RequestTimeFilterFastProperty.md)
 - [RequestTimeFilterPostcodeDistricts](docs/RequestTimeFilterPostcodeDistricts.md)
 - [RequestTimeFilterPostcodeDistrictsArrivalSearch](docs/RequestTimeFilterPostcodeDistrictsArrivalSearch.md)
 - [RequestTimeFilterPostcodeDistrictsDepartureSearch](docs/RequestTimeFilterPostcodeDistrictsDepartureSearch.md)
 - [RequestTimeFilterPostcodeDistrictsProperty](docs/RequestTimeFilterPostcodeDistrictsProperty.md)
 - [RequestTimeFilterPostcodeSectors](docs/RequestTimeFilterPostcodeSectors.md)
 - [RequestTimeFilterPostcodeSectorsArrivalSearch](docs/RequestTimeFilterPostcodeSectorsArrivalSearch.md)
 - [RequestTimeFilterPostcodeSectorsDepartureSearch](docs/RequestTimeFilterPostcodeSectorsDepartureSearch.md)
 - [RequestTimeFilterPostcodeSectorsProperty](docs/RequestTimeFilterPostcodeSectorsProperty.md)
 - [RequestTimeFilterPostcodes](docs/RequestTimeFilterPostcodes.md)
 - [RequestTimeFilterPostcodesArrivalSearch](docs/RequestTimeFilterPostcodesArrivalSearch.md)
 - [RequestTimeFilterPostcodesDepartureSearch](docs/RequestTimeFilterPostcodesDepartureSearch.md)
 - [RequestTimeFilterPostcodesProperty](docs/RequestTimeFilterPostcodesProperty.md)
 - [RequestTimeFilterProperty](docs/RequestTimeFilterProperty.md)
 - [RequestTimeMap](docs/RequestTimeMap.md)
 - [RequestTimeMapArrivalSearch](docs/RequestTimeMapArrivalSearch.md)
 - [RequestTimeMapDepartureSearch](docs/RequestTimeMapDepartureSearch.md)
 - [RequestTimeMapProperty](docs/RequestTimeMapProperty.md)
 - [RequestTransportation](docs/RequestTransportation.md)
 - [RequestTransportationFast](docs/RequestTransportationFast.md)
 - [RequestUnionOnIntersection](docs/RequestUnionOnIntersection.md)
 - [ResponseBoundingBox](docs/ResponseBoundingBox.md)
 - [ResponseBox](docs/ResponseBox.md)
 - [ResponseDistanceBreakdownItem](docs/ResponseDistanceBreakdownItem.md)
 - [ResponseError](docs/ResponseError.md)
 - [ResponseFareTicket](docs/ResponseFareTicket.md)
 - [ResponseFares](docs/ResponseFares.md)
 - [ResponseFaresBreakdownItem](docs/ResponseFaresBreakdownItem.md)
 - [ResponseFaresFast](docs/ResponseFaresFast.md)
 - [ResponseGeocoding](docs/ResponseGeocoding.md)
 - [ResponseGeocodingGeoJsonFeature](docs/ResponseGeocodingGeoJsonFeature.md)
 - [ResponseGeocodingGeometry](docs/ResponseGeocodingGeometry.md)
 - [ResponseGeocodingProperties](docs/ResponseGeocodingProperties.md)
 - [ResponseMapInfo](docs/ResponseMapInfo.md)
 - [ResponseMapInfoFeatures](docs/ResponseMapInfoFeatures.md)
 - [ResponseMapInfoFeaturesPublicTransport](docs/ResponseMapInfoFeaturesPublicTransport.md)
 - [ResponseMapInfoMap](docs/ResponseMapInfoMap.md)
 - [ResponseRoute](docs/ResponseRoute.md)
 - [ResponseRoutePart](docs/ResponseRoutePart.md)
 - [ResponseRoutes](docs/ResponseRoutes.md)
 - [ResponseRoutesLocation](docs/ResponseRoutesLocation.md)
 - [ResponseRoutesProperties](docs/ResponseRoutesProperties.md)
 - [ResponseRoutesResult](docs/ResponseRoutesResult.md)
 - [ResponseShape](docs/ResponseShape.md)
 - [ResponseSupportedLocation](docs/ResponseSupportedLocation.md)
 - [ResponseSupportedLocations](docs/ResponseSupportedLocations.md)
 - [ResponseTimeFilter](docs/ResponseTimeFilter.md)
 - [ResponseTimeFilterFast](docs/ResponseTimeFilterFast.md)
 - [ResponseTimeFilterFastLocation](docs/ResponseTimeFilterFastLocation.md)
 - [ResponseTimeFilterFastProperties](docs/ResponseTimeFilterFastProperties.md)
 - [ResponseTimeFilterFastResult](docs/ResponseTimeFilterFastResult.md)
 - [ResponseTimeFilterLocation](docs/ResponseTimeFilterLocation.md)
 - [ResponseTimeFilterPostcode](docs/ResponseTimeFilterPostcode.md)
 - [ResponseTimeFilterPostcodeDistrict](docs/ResponseTimeFilterPostcodeDistrict.md)
 - [ResponseTimeFilterPostcodeDistrictProperties](docs/ResponseTimeFilterPostcodeDistrictProperties.md)
 - [ResponseTimeFilterPostcodeDistricts](docs/ResponseTimeFilterPostcodeDistricts.md)
 - [ResponseTimeFilterPostcodeDistrictsResult](docs/ResponseTimeFilterPostcodeDistrictsResult.md)
 - [ResponseTimeFilterPostcodeSector](docs/ResponseTimeFilterPostcodeSector.md)
 - [ResponseTimeFilterPostcodeSectorProperties](docs/ResponseTimeFilterPostcodeSectorProperties.md)
 - [ResponseTimeFilterPostcodeSectors](docs/ResponseTimeFilterPostcodeSectors.md)
 - [ResponseTimeFilterPostcodeSectorsResult](docs/ResponseTimeFilterPostcodeSectorsResult.md)
 - [ResponseTimeFilterPostcodes](docs/ResponseTimeFilterPostcodes.md)
 - [ResponseTimeFilterPostcodesProperties](docs/ResponseTimeFilterPostcodesProperties.md)
 - [ResponseTimeFilterPostcodesResult](docs/ResponseTimeFilterPostcodesResult.md)
 - [ResponseTimeFilterProperties](docs/ResponseTimeFilterProperties.md)
 - [ResponseTimeFilterResult](docs/ResponseTimeFilterResult.md)
 - [ResponseTimeMap](docs/ResponseTimeMap.md)
 - [ResponseTimeMapBoundingBoxes](docs/ResponseTimeMapBoundingBoxes.md)
 - [ResponseTimeMapBoundingBoxesResult](docs/ResponseTimeMapBoundingBoxesResult.md)
 - [ResponseTimeMapProperties](docs/ResponseTimeMapProperties.md)
 - [ResponseTimeMapResult](docs/ResponseTimeMapResult.md)
 - [ResponseTimeMapWkt](docs/ResponseTimeMapWkt.md)
 - [ResponseTimeMapWktResult](docs/ResponseTimeMapWktResult.md)
 - [ResponseTransportationMode](docs/ResponseTransportationMode.md)
 - [ResponseTravelTimeStatistics](docs/ResponseTravelTimeStatistics.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### ApiKey

- **Type**: API key

- **API key parameter name**: X-Api-Key
- **Location**: HTTP header

### ApplicationId

- **Type**: API key

- **API key parameter name**: X-Application-Id
- **Location**: HTTP header


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

support@igeolise.com

