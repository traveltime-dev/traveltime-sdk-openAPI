# TravelTime Platform API Bash client

## Overview

This is a Bash client script for accessing TravelTime Platform API service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image

You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash

The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X

On OSX you might need to install bash-completion using Homebrew:

```shell
brew install bash-completion
```

and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh

In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to **

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


## Documentation For Models

 - [Coords](docs/Coords.md)
 - [RequestArrivalTimePeriod](docs/RequestArrivalTimePeriod.md)
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


## Documentation For Authorization


## ApiKey


- **Type**: API key
- **API key parameter name**: X-Api-Key
- **Location**: HTTP header

## ApplicationId


- **Type**: API key
- **API key parameter name**: X-Application-Id
- **Location**: HTTP header

