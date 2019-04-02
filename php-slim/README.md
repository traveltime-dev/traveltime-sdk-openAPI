# traveltimeplatform - PHP Slim Server library for TravelTime Platform API

[Slim Framework Documentation](https://www.slimframework.com/docs/)

## Requirements

* Web server with URL rewriting
* PHP 5.5.9 or newer

This package contains `.htaccess` for Apache configuration.
If you use another server(Nginx, HHVM, IIS, lighttpd) check out [Web Servers](https://www.slimframework.com/docs/v3/start/web-servers.html) doc.

## Installation via [Composer](https://getcomposer.org/)

Navigate into your project's root directory and execute the bash command shown below.
This command downloads the Slim Framework and its third-party dependencies into your project's `vendor/` directory.
```bash
$ composer install
```

## Start devserver

Run the following command in terminal to start localhost web server, assuming `./php-slim-server/` is public-accessible directory with `index.php` file:
```bash
$ php -S localhost:8888 -t php-slim-server
```
> **Warning** This web server was designed to aid application development.
> It may also be useful for testing purposes or for application demonstrations that are run in controlled environments.
> It is not intended to be a full-featured web server. It should not be used on a public network.

## Run tests

This package uses PHPUnit 4.8 for unit testing and PHP Codesniffer to check source code against user defined coding standard(`phpcsStandard` generator config option).
[Test folder](test) contains templates which you can fill with real test assertions.
How to write tests read at [PHPUnit Manual - Chapter 2. Writing Tests for PHPUnit](https://phpunit.de/manual/4.8/en/writing-tests-for-phpunit.html).
How to configure PHP CodeSniffer read at [PHP CodeSniffer Documentation](https://github.com/squizlabs/PHP_CodeSniffer/wiki).
There is [phplint](https://github.com/overtrue/phplint) tool to check php syntax automatically.

Command | Tool | Target
---- | ---- | ----
`$ composer test` | PHPUnit | All tests
`$ composer run test-apis` | PHPUnit | Apis tests
`$ composer run test-models` | PHPUnit | Models tests
`$ composer run phpcs` | PHP CodeSniffer | All files
`$ composer run phplint` | phplint | All files


## API Endpoints

All URIs are relative to *https://api.traveltimeapp.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | **geocodingReverseSearch** | **GET** /v4/geocoding/reverse | 
*DefaultApi* | **geocodingSearch** | **GET** /v4/geocoding/search | 
*DefaultApi* | **mapInfo** | **GET** /v4/map-info | 
*DefaultApi* | **routes** | **POST** /v4/routes | 
*DefaultApi* | **supportedLocations** | **POST** /v4/supported-locations | 
*DefaultApi* | **timeFilter** | **POST** /v4/time-filter | 
*DefaultApi* | **timeFilterFast** | **POST** /v4/time-filter/fast | 
*DefaultApi* | **timeFilterPostcodeDistricts** | **POST** /v4/time-filter/postcode-districts | 
*DefaultApi* | **timeFilterPostcodeSectors** | **POST** /v4/time-filter/postcode-sectors | 
*DefaultApi* | **timeFilterPostcodes** | **POST** /v4/time-filter/postcodes | 
*DefaultApi* | **timeMap** | **POST** /v4/time-map | 


## Models

* OpenAPIServer\Model\Coords
* OpenAPIServer\Model\RequestArrivalTimePeriod
* OpenAPIServer\Model\RequestLocation
* OpenAPIServer\Model\RequestRangeFull
* OpenAPIServer\Model\RequestRangeNoMaxResults
* OpenAPIServer\Model\RequestRoutes
* OpenAPIServer\Model\RequestRoutesArrivalSearch
* OpenAPIServer\Model\RequestRoutesDepartureSearch
* OpenAPIServer\Model\RequestRoutesProperty
* OpenAPIServer\Model\RequestSupportedLocations
* OpenAPIServer\Model\RequestTimeFilter
* OpenAPIServer\Model\RequestTimeFilterArrivalSearch
* OpenAPIServer\Model\RequestTimeFilterDepartureSearch
* OpenAPIServer\Model\RequestTimeFilterFast
* OpenAPIServer\Model\RequestTimeFilterFastArrivalManyToOneSearch
* OpenAPIServer\Model\RequestTimeFilterFastArrivalOneToManySearch
* OpenAPIServer\Model\RequestTimeFilterFastArrivalSearches
* OpenAPIServer\Model\RequestTimeFilterFastProperty
* OpenAPIServer\Model\RequestTimeFilterPostcodeDistricts
* OpenAPIServer\Model\RequestTimeFilterPostcodeDistrictsArrivalSearch
* OpenAPIServer\Model\RequestTimeFilterPostcodeDistrictsDepartureSearch
* OpenAPIServer\Model\RequestTimeFilterPostcodeDistrictsProperty
* OpenAPIServer\Model\RequestTimeFilterPostcodeSectors
* OpenAPIServer\Model\RequestTimeFilterPostcodeSectorsArrivalSearch
* OpenAPIServer\Model\RequestTimeFilterPostcodeSectorsDepartureSearch
* OpenAPIServer\Model\RequestTimeFilterPostcodeSectorsProperty
* OpenAPIServer\Model\RequestTimeFilterPostcodes
* OpenAPIServer\Model\RequestTimeFilterPostcodesArrivalSearch
* OpenAPIServer\Model\RequestTimeFilterPostcodesDepartureSearch
* OpenAPIServer\Model\RequestTimeFilterPostcodesProperty
* OpenAPIServer\Model\RequestTimeFilterProperty
* OpenAPIServer\Model\RequestTimeMap
* OpenAPIServer\Model\RequestTimeMapArrivalSearch
* OpenAPIServer\Model\RequestTimeMapDepartureSearch
* OpenAPIServer\Model\RequestTimeMapProperty
* OpenAPIServer\Model\RequestTransportation
* OpenAPIServer\Model\RequestTransportationFast
* OpenAPIServer\Model\RequestUnionOnIntersection
* OpenAPIServer\Model\ResponseBoundingBox
* OpenAPIServer\Model\ResponseBox
* OpenAPIServer\Model\ResponseDistanceBreakdownItem
* OpenAPIServer\Model\ResponseError
* OpenAPIServer\Model\ResponseFareTicket
* OpenAPIServer\Model\ResponseFares
* OpenAPIServer\Model\ResponseFaresBreakdownItem
* OpenAPIServer\Model\ResponseFaresFast
* OpenAPIServer\Model\ResponseGeocoding
* OpenAPIServer\Model\ResponseGeocodingGeoJsonFeature
* OpenAPIServer\Model\ResponseGeocodingGeometry
* OpenAPIServer\Model\ResponseGeocodingProperties
* OpenAPIServer\Model\ResponseMapInfo
* OpenAPIServer\Model\ResponseMapInfoFeatures
* OpenAPIServer\Model\ResponseMapInfoFeaturesPublicTransport
* OpenAPIServer\Model\ResponseMapInfoMap
* OpenAPIServer\Model\ResponseRoute
* OpenAPIServer\Model\ResponseRoutePart
* OpenAPIServer\Model\ResponseRoutes
* OpenAPIServer\Model\ResponseRoutesLocation
* OpenAPIServer\Model\ResponseRoutesProperties
* OpenAPIServer\Model\ResponseRoutesResult
* OpenAPIServer\Model\ResponseShape
* OpenAPIServer\Model\ResponseSupportedLocation
* OpenAPIServer\Model\ResponseSupportedLocations
* OpenAPIServer\Model\ResponseTimeFilter
* OpenAPIServer\Model\ResponseTimeFilterFast
* OpenAPIServer\Model\ResponseTimeFilterFastLocation
* OpenAPIServer\Model\ResponseTimeFilterFastProperties
* OpenAPIServer\Model\ResponseTimeFilterFastResult
* OpenAPIServer\Model\ResponseTimeFilterLocation
* OpenAPIServer\Model\ResponseTimeFilterPostcode
* OpenAPIServer\Model\ResponseTimeFilterPostcodeDistrict
* OpenAPIServer\Model\ResponseTimeFilterPostcodeDistrictProperties
* OpenAPIServer\Model\ResponseTimeFilterPostcodeDistricts
* OpenAPIServer\Model\ResponseTimeFilterPostcodeDistrictsResult
* OpenAPIServer\Model\ResponseTimeFilterPostcodeSector
* OpenAPIServer\Model\ResponseTimeFilterPostcodeSectorProperties
* OpenAPIServer\Model\ResponseTimeFilterPostcodeSectors
* OpenAPIServer\Model\ResponseTimeFilterPostcodeSectorsResult
* OpenAPIServer\Model\ResponseTimeFilterPostcodes
* OpenAPIServer\Model\ResponseTimeFilterPostcodesProperties
* OpenAPIServer\Model\ResponseTimeFilterPostcodesResult
* OpenAPIServer\Model\ResponseTimeFilterProperties
* OpenAPIServer\Model\ResponseTimeFilterResult
* OpenAPIServer\Model\ResponseTimeMap
* OpenAPIServer\Model\ResponseTimeMapBoundingBoxes
* OpenAPIServer\Model\ResponseTimeMapBoundingBoxesResult
* OpenAPIServer\Model\ResponseTimeMapProperties
* OpenAPIServer\Model\ResponseTimeMapResult
* OpenAPIServer\Model\ResponseTimeMapWkt
* OpenAPIServer\Model\ResponseTimeMapWktResult
* OpenAPIServer\Model\ResponseTransportationMode
* OpenAPIServer\Model\ResponseTravelTimeStatistics


## Authentication

