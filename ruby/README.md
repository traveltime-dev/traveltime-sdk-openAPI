# openapi_client

OpenapiClient - the Ruby gem for the TravelTime API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.2.3
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build openapi_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./openapi_client-1.0.0.gem
```

(for development, run `gem install --dev ./openapi_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'openapi_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'openapi_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'openapi_client'

# Setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'

  # Configure API key authorization: ApplicationId
  config.api_key['ApplicationId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApplicationId'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
lat = 1.2 # Float | 
lng = 1.2 # Float | 
opts = {
  within_country: 'within_country_example' # String | 
}

begin
  result = api_instance.geocoding_reverse_search(lat, lng, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->geocoding_reverse_search: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.traveltimeapp.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OpenapiClient::DefaultApi* | [**geocoding_reverse_search**](docs/DefaultApi.md#geocoding_reverse_search) | **GET** /v4/geocoding/reverse | 
*OpenapiClient::DefaultApi* | [**geocoding_search**](docs/DefaultApi.md#geocoding_search) | **GET** /v4/geocoding/search | 
*OpenapiClient::DefaultApi* | [**map_info**](docs/DefaultApi.md#map_info) | **GET** /v4/map-info | 
*OpenapiClient::DefaultApi* | [**routes**](docs/DefaultApi.md#routes) | **POST** /v4/routes | 
*OpenapiClient::DefaultApi* | [**supported_locations**](docs/DefaultApi.md#supported_locations) | **POST** /v4/supported-locations | 
*OpenapiClient::DefaultApi* | [**time_filter**](docs/DefaultApi.md#time_filter) | **POST** /v4/time-filter | 
*OpenapiClient::DefaultApi* | [**time_filter_fast**](docs/DefaultApi.md#time_filter_fast) | **POST** /v4/time-filter/fast | 
*OpenapiClient::DefaultApi* | [**time_filter_postcode_districts**](docs/DefaultApi.md#time_filter_postcode_districts) | **POST** /v4/time-filter/postcode-districts | 
*OpenapiClient::DefaultApi* | [**time_filter_postcode_sectors**](docs/DefaultApi.md#time_filter_postcode_sectors) | **POST** /v4/time-filter/postcode-sectors | 
*OpenapiClient::DefaultApi* | [**time_filter_postcodes**](docs/DefaultApi.md#time_filter_postcodes) | **POST** /v4/time-filter/postcodes | 
*OpenapiClient::DefaultApi* | [**time_map**](docs/DefaultApi.md#time_map) | **POST** /v4/time-map | 


## Documentation for Models

 - [OpenapiClient::Coords](docs/Coords.md)
 - [OpenapiClient::RequestArrivalTimePeriod](docs/RequestArrivalTimePeriod.md)
 - [OpenapiClient::RequestLevelOfDetail](docs/RequestLevelOfDetail.md)
 - [OpenapiClient::RequestLocation](docs/RequestLocation.md)
 - [OpenapiClient::RequestRangeFull](docs/RequestRangeFull.md)
 - [OpenapiClient::RequestRangeNoMaxResults](docs/RequestRangeNoMaxResults.md)
 - [OpenapiClient::RequestRoutes](docs/RequestRoutes.md)
 - [OpenapiClient::RequestRoutesArrivalSearch](docs/RequestRoutesArrivalSearch.md)
 - [OpenapiClient::RequestRoutesDepartureSearch](docs/RequestRoutesDepartureSearch.md)
 - [OpenapiClient::RequestRoutesProperty](docs/RequestRoutesProperty.md)
 - [OpenapiClient::RequestSupportedLocations](docs/RequestSupportedLocations.md)
 - [OpenapiClient::RequestTimeFilter](docs/RequestTimeFilter.md)
 - [OpenapiClient::RequestTimeFilterArrivalSearch](docs/RequestTimeFilterArrivalSearch.md)
 - [OpenapiClient::RequestTimeFilterDepartureSearch](docs/RequestTimeFilterDepartureSearch.md)
 - [OpenapiClient::RequestTimeFilterFast](docs/RequestTimeFilterFast.md)
 - [OpenapiClient::RequestTimeFilterFastArrivalManyToOneSearch](docs/RequestTimeFilterFastArrivalManyToOneSearch.md)
 - [OpenapiClient::RequestTimeFilterFastArrivalOneToManySearch](docs/RequestTimeFilterFastArrivalOneToManySearch.md)
 - [OpenapiClient::RequestTimeFilterFastArrivalSearches](docs/RequestTimeFilterFastArrivalSearches.md)
 - [OpenapiClient::RequestTimeFilterFastProperty](docs/RequestTimeFilterFastProperty.md)
 - [OpenapiClient::RequestTimeFilterPostcodeDistricts](docs/RequestTimeFilterPostcodeDistricts.md)
 - [OpenapiClient::RequestTimeFilterPostcodeDistrictsArrivalSearch](docs/RequestTimeFilterPostcodeDistrictsArrivalSearch.md)
 - [OpenapiClient::RequestTimeFilterPostcodeDistrictsDepartureSearch](docs/RequestTimeFilterPostcodeDistrictsDepartureSearch.md)
 - [OpenapiClient::RequestTimeFilterPostcodeDistrictsProperty](docs/RequestTimeFilterPostcodeDistrictsProperty.md)
 - [OpenapiClient::RequestTimeFilterPostcodeSectors](docs/RequestTimeFilterPostcodeSectors.md)
 - [OpenapiClient::RequestTimeFilterPostcodeSectorsArrivalSearch](docs/RequestTimeFilterPostcodeSectorsArrivalSearch.md)
 - [OpenapiClient::RequestTimeFilterPostcodeSectorsDepartureSearch](docs/RequestTimeFilterPostcodeSectorsDepartureSearch.md)
 - [OpenapiClient::RequestTimeFilterPostcodeSectorsProperty](docs/RequestTimeFilterPostcodeSectorsProperty.md)
 - [OpenapiClient::RequestTimeFilterPostcodes](docs/RequestTimeFilterPostcodes.md)
 - [OpenapiClient::RequestTimeFilterPostcodesArrivalSearch](docs/RequestTimeFilterPostcodesArrivalSearch.md)
 - [OpenapiClient::RequestTimeFilterPostcodesDepartureSearch](docs/RequestTimeFilterPostcodesDepartureSearch.md)
 - [OpenapiClient::RequestTimeFilterPostcodesProperty](docs/RequestTimeFilterPostcodesProperty.md)
 - [OpenapiClient::RequestTimeFilterProperty](docs/RequestTimeFilterProperty.md)
 - [OpenapiClient::RequestTimeMap](docs/RequestTimeMap.md)
 - [OpenapiClient::RequestTimeMapArrivalSearch](docs/RequestTimeMapArrivalSearch.md)
 - [OpenapiClient::RequestTimeMapDepartureSearch](docs/RequestTimeMapDepartureSearch.md)
 - [OpenapiClient::RequestTimeMapProperty](docs/RequestTimeMapProperty.md)
 - [OpenapiClient::RequestTransportation](docs/RequestTransportation.md)
 - [OpenapiClient::RequestTransportationFast](docs/RequestTransportationFast.md)
 - [OpenapiClient::RequestUnionOnIntersection](docs/RequestUnionOnIntersection.md)
 - [OpenapiClient::ResponseBoundingBox](docs/ResponseBoundingBox.md)
 - [OpenapiClient::ResponseBox](docs/ResponseBox.md)
 - [OpenapiClient::ResponseDistanceBreakdownItem](docs/ResponseDistanceBreakdownItem.md)
 - [OpenapiClient::ResponseError](docs/ResponseError.md)
 - [OpenapiClient::ResponseFareTicket](docs/ResponseFareTicket.md)
 - [OpenapiClient::ResponseFares](docs/ResponseFares.md)
 - [OpenapiClient::ResponseFaresBreakdownItem](docs/ResponseFaresBreakdownItem.md)
 - [OpenapiClient::ResponseFaresFast](docs/ResponseFaresFast.md)
 - [OpenapiClient::ResponseGeocoding](docs/ResponseGeocoding.md)
 - [OpenapiClient::ResponseGeocodingGeoJsonFeature](docs/ResponseGeocodingGeoJsonFeature.md)
 - [OpenapiClient::ResponseGeocodingGeometry](docs/ResponseGeocodingGeometry.md)
 - [OpenapiClient::ResponseGeocodingProperties](docs/ResponseGeocodingProperties.md)
 - [OpenapiClient::ResponseMapInfo](docs/ResponseMapInfo.md)
 - [OpenapiClient::ResponseMapInfoFeatures](docs/ResponseMapInfoFeatures.md)
 - [OpenapiClient::ResponseMapInfoFeaturesPublicTransport](docs/ResponseMapInfoFeaturesPublicTransport.md)
 - [OpenapiClient::ResponseMapInfoMap](docs/ResponseMapInfoMap.md)
 - [OpenapiClient::ResponseRoute](docs/ResponseRoute.md)
 - [OpenapiClient::ResponseRoutePart](docs/ResponseRoutePart.md)
 - [OpenapiClient::ResponseRoutes](docs/ResponseRoutes.md)
 - [OpenapiClient::ResponseRoutesLocation](docs/ResponseRoutesLocation.md)
 - [OpenapiClient::ResponseRoutesProperties](docs/ResponseRoutesProperties.md)
 - [OpenapiClient::ResponseRoutesResult](docs/ResponseRoutesResult.md)
 - [OpenapiClient::ResponseShape](docs/ResponseShape.md)
 - [OpenapiClient::ResponseSupportedLocation](docs/ResponseSupportedLocation.md)
 - [OpenapiClient::ResponseSupportedLocations](docs/ResponseSupportedLocations.md)
 - [OpenapiClient::ResponseTimeFilter](docs/ResponseTimeFilter.md)
 - [OpenapiClient::ResponseTimeFilterFast](docs/ResponseTimeFilterFast.md)
 - [OpenapiClient::ResponseTimeFilterFastLocation](docs/ResponseTimeFilterFastLocation.md)
 - [OpenapiClient::ResponseTimeFilterFastProperties](docs/ResponseTimeFilterFastProperties.md)
 - [OpenapiClient::ResponseTimeFilterFastResult](docs/ResponseTimeFilterFastResult.md)
 - [OpenapiClient::ResponseTimeFilterLocation](docs/ResponseTimeFilterLocation.md)
 - [OpenapiClient::ResponseTimeFilterPostcode](docs/ResponseTimeFilterPostcode.md)
 - [OpenapiClient::ResponseTimeFilterPostcodeDistrict](docs/ResponseTimeFilterPostcodeDistrict.md)
 - [OpenapiClient::ResponseTimeFilterPostcodeDistrictProperties](docs/ResponseTimeFilterPostcodeDistrictProperties.md)
 - [OpenapiClient::ResponseTimeFilterPostcodeDistricts](docs/ResponseTimeFilterPostcodeDistricts.md)
 - [OpenapiClient::ResponseTimeFilterPostcodeDistrictsResult](docs/ResponseTimeFilterPostcodeDistrictsResult.md)
 - [OpenapiClient::ResponseTimeFilterPostcodeSector](docs/ResponseTimeFilterPostcodeSector.md)
 - [OpenapiClient::ResponseTimeFilterPostcodeSectorProperties](docs/ResponseTimeFilterPostcodeSectorProperties.md)
 - [OpenapiClient::ResponseTimeFilterPostcodeSectors](docs/ResponseTimeFilterPostcodeSectors.md)
 - [OpenapiClient::ResponseTimeFilterPostcodeSectorsResult](docs/ResponseTimeFilterPostcodeSectorsResult.md)
 - [OpenapiClient::ResponseTimeFilterPostcodes](docs/ResponseTimeFilterPostcodes.md)
 - [OpenapiClient::ResponseTimeFilterPostcodesProperties](docs/ResponseTimeFilterPostcodesProperties.md)
 - [OpenapiClient::ResponseTimeFilterPostcodesResult](docs/ResponseTimeFilterPostcodesResult.md)
 - [OpenapiClient::ResponseTimeFilterProperties](docs/ResponseTimeFilterProperties.md)
 - [OpenapiClient::ResponseTimeFilterResult](docs/ResponseTimeFilterResult.md)
 - [OpenapiClient::ResponseTimeMap](docs/ResponseTimeMap.md)
 - [OpenapiClient::ResponseTimeMapBoundingBoxes](docs/ResponseTimeMapBoundingBoxes.md)
 - [OpenapiClient::ResponseTimeMapBoundingBoxesResult](docs/ResponseTimeMapBoundingBoxesResult.md)
 - [OpenapiClient::ResponseTimeMapProperties](docs/ResponseTimeMapProperties.md)
 - [OpenapiClient::ResponseTimeMapResult](docs/ResponseTimeMapResult.md)
 - [OpenapiClient::ResponseTimeMapWkt](docs/ResponseTimeMapWkt.md)
 - [OpenapiClient::ResponseTimeMapWktResult](docs/ResponseTimeMapWktResult.md)
 - [OpenapiClient::ResponseTransportationMode](docs/ResponseTransportationMode.md)
 - [OpenapiClient::ResponseTravelTimeStatistics](docs/ResponseTravelTimeStatistics.md)


## Documentation for Authorization


### ApiKey


- **Type**: API key
- **API key parameter name**: X-Api-Key
- **Location**: HTTP header

### ApplicationId


- **Type**: API key
- **API key parameter name**: X-Application-Id
- **Location**: HTTP header

