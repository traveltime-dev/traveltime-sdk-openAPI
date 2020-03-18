import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
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
class DefaultApi extends ApiClient with _$DefaultApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    DefaultApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// 
    ///
    /// 
    @GetReq(path: "/v4/geocoding/reverse", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseGeocoding> geocodingReverseSearch(
        
            @QueryParam("lat") double lat, 
        
            @QueryParam("lng") double lng, 
        
            @QueryParam("within.country") String withinCountry
        ) {
        return super.geocodingReverseSearch(
        
        lat, 
        
        lng, 
        
        withinCountry

        ).timeout(timeout);
    }

    /// 
    ///
    /// 
    @GetReq(path: "/v4/geocoding/search", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseGeocoding> geocodingSearch(
        
            @QueryParam("query") String query, 
        
            @QueryParam("focus.lat") double focusLat, 
        
            @QueryParam("focus.lng") double focusLng, 
        
            @QueryParam("within.country") String withinCountry
        ) {
        return super.geocodingSearch(
        
        query, 
        
        focusLat, 
        
        focusLng, 
        
        withinCountry

        ).timeout(timeout);
    }

    /// 
    ///
    /// 
    @GetReq(path: "/v4/map-info", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseMapInfo> mapInfo(
        ) {
        return super.mapInfo(

        ).timeout(timeout);
    }

    /// 
    ///
    /// 
    @PostReq(path: "/v4/routes", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseRoutes> routes(
            
             @AsJson() RequestRoutes requestRoutes
        ) {
        return super.routes(

        
        requestRoutes
        ).timeout(timeout);
    }

    /// 
    ///
    /// 
    @PostReq(path: "/v4/supported-locations", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseSupportedLocations> supportedLocations(
            
             @AsJson() RequestSupportedLocations requestSupportedLocations
        ) {
        return super.supportedLocations(

        
        requestSupportedLocations
        ).timeout(timeout);
    }

    /// 
    ///
    /// 
    @PostReq(path: "/v4/time-filter", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseTimeFilter> timeFilter(
            
             @AsJson() RequestTimeFilter requestTimeFilter
        ) {
        return super.timeFilter(

        
        requestTimeFilter
        ).timeout(timeout);
    }

    /// 
    ///
    /// 
    @PostReq(path: "/v4/time-filter/fast", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseTimeFilterFast> timeFilterFast(
            
             @AsJson() RequestTimeFilterFast requestTimeFilterFast
        ) {
        return super.timeFilterFast(

        
        requestTimeFilterFast
        ).timeout(timeout);
    }

    /// 
    ///
    /// 
    @PostReq(path: "/v4/time-filter/postcode-districts", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseTimeFilterPostcodeDistricts> timeFilterPostcodeDistricts(
            
             @AsJson() RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts
        ) {
        return super.timeFilterPostcodeDistricts(

        
        requestTimeFilterPostcodeDistricts
        ).timeout(timeout);
    }

    /// 
    ///
    /// 
    @PostReq(path: "/v4/time-filter/postcode-sectors", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseTimeFilterPostcodeSectors> timeFilterPostcodeSectors(
            
             @AsJson() RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors
        ) {
        return super.timeFilterPostcodeSectors(

        
        requestTimeFilterPostcodeSectors
        ).timeout(timeout);
    }

    /// 
    ///
    /// 
    @PostReq(path: "/v4/time-filter/postcodes", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseTimeFilterPostcodes> timeFilterPostcodes(
            
             @AsJson() RequestTimeFilterPostcodes requestTimeFilterPostcodes
        ) {
        return super.timeFilterPostcodes(

        
        requestTimeFilterPostcodes
        ).timeout(timeout);
    }

    /// 
    ///
    /// 
    @PostReq(path: "/v4/time-map", metadata: {"auth": [ {"type": "apiKey", "name": "ApiKey", "keyName": "X-Api-Key", "where": "header" },  {"type": "apiKey", "name": "ApplicationId", "keyName": "X-Application-Id", "where": "header" }]})
    Future<ResponseTimeMap> timeMap(
            
             @AsJson() RequestTimeMap requestTimeMap
        ) {
        return super.timeMap(

        
        requestTimeMap
        ).timeout(timeout);
    }


}
