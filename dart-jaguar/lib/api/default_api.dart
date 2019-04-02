import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_serializer/src/repo/repo.dart';
import 'dart:async';

import 'package:openapi/model/response_time_filter_postcodes.dart';
import 'package:openapi/model/response_error.dart';
import 'package:openapi/model/request_time_map.dart';
import 'package:openapi/model/request_routes.dart';
import 'package:openapi/model/response_routes.dart';
import 'package:openapi/model/request_time_filter_postcodes.dart';
import 'package:openapi/model/request_supported_locations.dart';
import 'package:openapi/model/request_time_filter_fast.dart';
import 'package:openapi/model/response_time_filter_postcode_sectors.dart';
import 'package:openapi/model/response_time_filter_postcode_districts.dart';
import 'package:openapi/model/request_time_filter_postcode_districts.dart';
import 'package:openapi/model/response_time_filter.dart';
import 'package:openapi/model/response_geocoding.dart';
import 'package:openapi/model/response_time_map.dart';
import 'package:openapi/model/response_supported_locations.dart';
import 'package:openapi/model/response_time_filter_fast.dart';
import 'package:openapi/model/request_time_filter_postcode_sectors.dart';
import 'package:openapi/model/response_map_info.dart';
import 'package:openapi/model/request_time_filter.dart';


part 'default_api.jretro.dart';

@GenApiClient()
class DefaultApi extends _$DefaultApiClient implements ApiClient {
    final Route base;
    final SerializerRepo serializers;

    DefaultApi({this.base, this.serializers});

    /// 
    ///
    /// 
    @GetReq(path: "/v4/geocoding/reverse", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseGeocoding> geocodingReverseSearch(
        
        @QueryParam("focus.lat") double focusLat, 
        
        @QueryParam("focus.lng") double focusLng, 
        
        @QueryParam("within.country") String withinCountry
    );

    /// 
    ///
    /// 
    @GetReq(path: "/v4/geocoding/search", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseGeocoding> geocodingSearch(
        
        @QueryParam("query") String query, 
        
        @QueryParam("within.country") String withinCountry, 
        
        @QueryParam("focus.lat") double focusLat, 
        
        @QueryParam("focus.lng") double focusLng
    );

    /// 
    ///
    /// 
    @GetReq(path: "/v4/map-info", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseMapInfo> mapInfo(
    );

    /// 
    ///
    /// 
    @PostReq(path: "/v4/routes", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseRoutes> routes(
        
        @AsJson() RequestRoutes requestRoutes
    );

    /// 
    ///
    /// 
    @PostReq(path: "/v4/supported-locations", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseSupportedLocations> supportedLocations(
        
        @AsJson() RequestSupportedLocations requestSupportedLocations
    );

    /// 
    ///
    /// 
    @PostReq(path: "/v4/time-filter", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseTimeFilter> timeFilter(
        
        @AsJson() RequestTimeFilter requestTimeFilter
    );

    /// 
    ///
    /// 
    @PostReq(path: "/v4/time-filter/fast", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseTimeFilterFast> timeFilterFast(
        
        @AsJson() RequestTimeFilterFast requestTimeFilterFast
    );

    /// 
    ///
    /// 
    @PostReq(path: "/v4/time-filter/postcode-districts", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseTimeFilterPostcodeDistricts> timeFilterPostcodeDistricts(
        
        @AsJson() RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts
    );

    /// 
    ///
    /// 
    @PostReq(path: "/v4/time-filter/postcode-sectors", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseTimeFilterPostcodeSectors> timeFilterPostcodeSectors(
        
        @AsJson() RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors
    );

    /// 
    ///
    /// 
    @PostReq(path: "/v4/time-filter/postcodes", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseTimeFilterPostcodes> timeFilterPostcodes(
        
        @AsJson() RequestTimeFilterPostcodes requestTimeFilterPostcodes
    );

    /// 
    ///
    /// 
    @PostReq(path: "/v4/time-map", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseTimeMap> timeMap(
        
        @AsJson() RequestTimeMap requestTimeMap
    );


}
