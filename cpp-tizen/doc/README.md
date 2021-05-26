# Documentation for TravelTime API 1.2.3 Tizen Client SDK

## How do I get the doc files?
First generate source code by running `openapi-generator`
Then run `doc/generateDocumentation.sh` from the output folder. It will generate all the doc files and put them in the `doc/SDK` directory.
To successfully generate documentation it needs `Doxygen` installed in the path.
*Note* - Before generating the documentation, put the logo of the project as the file `doc/logo.png` before running `doxygen`.


## How do I use this?
This is the structure of the doc folder:

```
.
├── logo.png                  \\Logo of the project
├── Doxyfile                  \\Doxygen config files
├── generateDocumentation.sh  \\Script to run to generate documentation
├── README.md                 \\This file
├── SDK                       \\Documentation for all classes in TravelTime API Tizen Client SDK. See ./html/index.html
│   └── html

```

## *tl;dr* run this:

```
doc/generateDocumentation.sh
```

The above SDK folder will be generated. See the index.html inside the SDK folder.


## What's Doxygen?
Doxygen is the de facto standard tool for generating/extracting documentation from annotated/unannotated C++ sources, but it also supports other popular programming languages such as C, Objective-C, C#, PHP, Java, Python, IDL (Corba, Microsoft, and UNO/OpenOffice flavors), Fortran, VHDL, Tcl, and to some extent D.

Check out [Doxygen](https://www.doxygen.org/) for additional information about the Doxygen project.

## I Don't want to run Doxygen. What are the API files for accessing the REST endpoints?
All URIs are relative to https://api.traveltimeapp.comhttps://api.traveltimeapp.com


### DefaultManager
Method | HTTP request | Description
------------- | ------------- | -------------
*geocodingReverseSearchSync* | *GET* /v4/geocoding/reverse | .
*geocodingReverseSearchASync* | *GET* /v4/geocoding/reverse | .
*geocodingSearchSync* | *GET* /v4/geocoding/search | .
*geocodingSearchASync* | *GET* /v4/geocoding/search | .
*mapInfoSync* | *GET* /v4/map-info | .
*mapInfoASync* | *GET* /v4/map-info | .
*routesSync* | *POST* /v4/routes | .
*routesASync* | *POST* /v4/routes | .
*supportedLocationsSync* | *POST* /v4/supported-locations | .
*supportedLocationsASync* | *POST* /v4/supported-locations | .
*timeFilterSync* | *POST* /v4/time-filter | .
*timeFilterASync* | *POST* /v4/time-filter | .
*timeFilterFastSync* | *POST* /v4/time-filter/fast | .
*timeFilterFastASync* | *POST* /v4/time-filter/fast | .
*timeFilterPostcodeDistrictsSync* | *POST* /v4/time-filter/postcode-districts | .
*timeFilterPostcodeDistrictsASync* | *POST* /v4/time-filter/postcode-districts | .
*timeFilterPostcodeSectorsSync* | *POST* /v4/time-filter/postcode-sectors | .
*timeFilterPostcodeSectorsASync* | *POST* /v4/time-filter/postcode-sectors | .
*timeFilterPostcodesSync* | *POST* /v4/time-filter/postcodes | .
*timeFilterPostcodesASync* | *POST* /v4/time-filter/postcodes | .
*timeMapSync* | *POST* /v4/time-map | .
*timeMapASync* | *POST* /v4/time-map | .


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *Coords* | 
 *RequestArrivalTimePeriod* | 
 *RequestLevelOfDetail* | 
 *RequestLocation* | 
 *RequestRangeFull* | 
 *RequestRangeNoMaxResults* | 
 *RequestRoutes* | 
 *RequestRoutesArrivalSearch* | 
 *RequestRoutesDepartureSearch* | 
 *RequestRoutesProperty* | 
 *RequestSupportedLocations* | 
 *RequestTimeFilter* | 
 *RequestTimeFilterArrivalSearch* | 
 *RequestTimeFilterDepartureSearch* | 
 *RequestTimeFilterFast* | 
 *RequestTimeFilterFastArrivalManyToOneSearch* | 
 *RequestTimeFilterFastArrivalOneToManySearch* | 
 *RequestTimeFilterFastArrivalSearches* | 
 *RequestTimeFilterFastProperty* | 
 *RequestTimeFilterPostcodeDistricts* | 
 *RequestTimeFilterPostcodeDistrictsArrivalSearch* | 
 *RequestTimeFilterPostcodeDistrictsDepartureSearch* | 
 *RequestTimeFilterPostcodeDistrictsProperty* | 
 *RequestTimeFilterPostcodeSectors* | 
 *RequestTimeFilterPostcodeSectorsArrivalSearch* | 
 *RequestTimeFilterPostcodeSectorsDepartureSearch* | 
 *RequestTimeFilterPostcodeSectorsProperty* | 
 *RequestTimeFilterPostcodes* | 
 *RequestTimeFilterPostcodesArrivalSearch* | 
 *RequestTimeFilterPostcodesDepartureSearch* | 
 *RequestTimeFilterPostcodesProperty* | 
 *RequestTimeFilterProperty* | 
 *RequestTimeMap* | 
 *RequestTimeMapArrivalSearch* | 
 *RequestTimeMapDepartureSearch* | 
 *RequestTimeMapProperty* | 
 *RequestTransportation* | 
 *RequestTransportationFast* | 
 *RequestUnionOnIntersection* | 
 *ResponseBoundingBox* | 
 *ResponseBox* | 
 *ResponseDistanceBreakdownItem* | 
 *ResponseError* | 
 *ResponseFareTicket* | 
 *ResponseFares* | 
 *ResponseFaresBreakdownItem* | 
 *ResponseFaresFast* | 
 *ResponseGeocoding* | 
 *ResponseGeocodingGeoJsonFeature* | 
 *ResponseGeocodingGeometry* | 
 *ResponseGeocodingProperties* | 
 *ResponseMapInfo* | 
 *ResponseMapInfoFeatures* | 
 *ResponseMapInfoFeaturesPublicTransport* | 
 *ResponseMapInfoMap* | 
 *ResponseRoute* | 
 *ResponseRoutePart* | 
 *ResponseRoutes* | 
 *ResponseRoutesLocation* | 
 *ResponseRoutesProperties* | 
 *ResponseRoutesResult* | 
 *ResponseShape* | 
 *ResponseSupportedLocation* | 
 *ResponseSupportedLocations* | 
 *ResponseTimeFilter* | 
 *ResponseTimeFilterFast* | 
 *ResponseTimeFilterFastLocation* | 
 *ResponseTimeFilterFastProperties* | 
 *ResponseTimeFilterFastResult* | 
 *ResponseTimeFilterLocation* | 
 *ResponseTimeFilterPostcode* | 
 *ResponseTimeFilterPostcodeDistrict* | 
 *ResponseTimeFilterPostcodeDistrictProperties* | 
 *ResponseTimeFilterPostcodeDistricts* | 
 *ResponseTimeFilterPostcodeDistrictsResult* | 
 *ResponseTimeFilterPostcodeSector* | 
 *ResponseTimeFilterPostcodeSectorProperties* | 
 *ResponseTimeFilterPostcodeSectors* | 
 *ResponseTimeFilterPostcodeSectorsResult* | 
 *ResponseTimeFilterPostcodes* | 
 *ResponseTimeFilterPostcodesProperties* | 
 *ResponseTimeFilterPostcodesResult* | 
 *ResponseTimeFilterProperties* | 
 *ResponseTimeFilterResult* | 
 *ResponseTimeMap* | 
 *ResponseTimeMapBoundingBoxes* | 
 *ResponseTimeMapBoundingBoxesResult* | 
 *ResponseTimeMapProperties* | 
 *ResponseTimeMapResult* | 
 *ResponseTimeMapWkt* | 
 *ResponseTimeMapWktResult* | 
 *ResponseTransportationMode* | 
 *ResponseTravelTimeStatistics* | 

