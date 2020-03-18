package org.openapitools.server.api.verticle;

import org.openapitools.server.api.MainApiException;
import org.openapitools.server.api.model.RequestRoutes;
import org.openapitools.server.api.model.RequestSupportedLocations;
import org.openapitools.server.api.model.RequestTimeFilter;
import org.openapitools.server.api.model.RequestTimeFilterFast;
import org.openapitools.server.api.model.RequestTimeFilterPostcodeDistricts;
import org.openapitools.server.api.model.RequestTimeFilterPostcodeSectors;
import org.openapitools.server.api.model.RequestTimeFilterPostcodes;
import org.openapitools.server.api.model.RequestTimeMap;
import org.openapitools.server.api.model.ResponseError;
import org.openapitools.server.api.model.ResponseGeocoding;
import org.openapitools.server.api.model.ResponseMapInfo;
import org.openapitools.server.api.model.ResponseRoutes;
import org.openapitools.server.api.model.ResponseSupportedLocations;
import org.openapitools.server.api.model.ResponseTimeFilter;
import org.openapitools.server.api.model.ResponseTimeFilterFast;
import org.openapitools.server.api.model.ResponseTimeFilterPostcodeDistricts;
import org.openapitools.server.api.model.ResponseTimeFilterPostcodeSectors;
import org.openapitools.server.api.model.ResponseTimeFilterPostcodes;
import org.openapitools.server.api.model.ResponseTimeMap;

import io.vertx.core.AsyncResult;
import io.vertx.core.Handler;

import java.util.List;
import java.util.Map;

public interface DefaultApi  {
    //geocodingReverseSearch
    void geocodingReverseSearch(Double lat, Double lng, String withinCountry, Handler<AsyncResult<ResponseGeocoding>> handler);
    
    //geocodingSearch
    void geocodingSearch(String query, Double focusLat, Double focusLng, String withinCountry, Handler<AsyncResult<ResponseGeocoding>> handler);
    
    //mapInfo
    void mapInfo(Handler<AsyncResult<ResponseMapInfo>> handler);
    
    //routes
    void routes(RequestRoutes requestRoutes, Handler<AsyncResult<ResponseRoutes>> handler);
    
    //supportedLocations
    void supportedLocations(RequestSupportedLocations requestSupportedLocations, Handler<AsyncResult<ResponseSupportedLocations>> handler);
    
    //timeFilter
    void timeFilter(RequestTimeFilter requestTimeFilter, Handler<AsyncResult<ResponseTimeFilter>> handler);
    
    //timeFilterFast
    void timeFilterFast(RequestTimeFilterFast requestTimeFilterFast, Handler<AsyncResult<ResponseTimeFilterFast>> handler);
    
    //timeFilterPostcodeDistricts
    void timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts, Handler<AsyncResult<ResponseTimeFilterPostcodeDistricts>> handler);
    
    //timeFilterPostcodeSectors
    void timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors, Handler<AsyncResult<ResponseTimeFilterPostcodeSectors>> handler);
    
    //timeFilterPostcodes
    void timeFilterPostcodes(RequestTimeFilterPostcodes requestTimeFilterPostcodes, Handler<AsyncResult<ResponseTimeFilterPostcodes>> handler);
    
    //timeMap
    void timeMap(RequestTimeMap requestTimeMap, Handler<AsyncResult<ResponseTimeMap>> handler);
    
}
