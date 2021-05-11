package org.openapitools.vertxweb.server.api;

import org.openapitools.vertxweb.server.model.RequestRoutes;
import org.openapitools.vertxweb.server.model.RequestSupportedLocations;
import org.openapitools.vertxweb.server.model.RequestTimeFilter;
import org.openapitools.vertxweb.server.model.RequestTimeFilterFast;
import org.openapitools.vertxweb.server.model.RequestTimeFilterPostcodeDistricts;
import org.openapitools.vertxweb.server.model.RequestTimeFilterPostcodeSectors;
import org.openapitools.vertxweb.server.model.RequestTimeFilterPostcodes;
import org.openapitools.vertxweb.server.model.RequestTimeMap;
import org.openapitools.vertxweb.server.model.ResponseError;
import org.openapitools.vertxweb.server.model.ResponseGeocoding;
import org.openapitools.vertxweb.server.model.ResponseMapInfo;
import org.openapitools.vertxweb.server.model.ResponseRoutes;
import org.openapitools.vertxweb.server.model.ResponseSupportedLocations;
import org.openapitools.vertxweb.server.model.ResponseTimeFilter;
import org.openapitools.vertxweb.server.model.ResponseTimeFilterFast;
import org.openapitools.vertxweb.server.model.ResponseTimeFilterPostcodeDistricts;
import org.openapitools.vertxweb.server.model.ResponseTimeFilterPostcodeSectors;
import org.openapitools.vertxweb.server.model.ResponseTimeFilterPostcodes;
import org.openapitools.vertxweb.server.model.ResponseTimeMap;

import org.openapitools.vertxweb.server.ApiResponse;

import io.vertx.core.Future;
import io.vertx.core.json.JsonObject;

import java.util.List;
import java.util.Map;

public interface DefaultApi  {
    Future<ApiResponse<ResponseGeocoding>> geocodingReverseSearch(Double lat, Double lng, String withinCountry);
    Future<ApiResponse<ResponseGeocoding>> geocodingSearch(String query, Double focusLat, Double focusLng, String withinCountry);
    Future<ApiResponse<ResponseMapInfo>> mapInfo();
    Future<ApiResponse<ResponseRoutes>> routes(RequestRoutes requestRoutes);
    Future<ApiResponse<ResponseSupportedLocations>> supportedLocations(RequestSupportedLocations requestSupportedLocations);
    Future<ApiResponse<ResponseTimeFilter>> timeFilter(RequestTimeFilter requestTimeFilter);
    Future<ApiResponse<ResponseTimeFilterFast>> timeFilterFast(RequestTimeFilterFast requestTimeFilterFast);
    Future<ApiResponse<ResponseTimeFilterPostcodeDistricts>> timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts);
    Future<ApiResponse<ResponseTimeFilterPostcodeSectors>> timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors);
    Future<ApiResponse<ResponseTimeFilterPostcodes>> timeFilterPostcodes(RequestTimeFilterPostcodes requestTimeFilterPostcodes);
    Future<ApiResponse<ResponseTimeMap>> timeMap(RequestTimeMap requestTimeMap);
}
