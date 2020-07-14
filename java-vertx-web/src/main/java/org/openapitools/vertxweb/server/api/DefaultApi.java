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

import io.reactivex.Single;

import java.util.List;
import java.util.Map;

public interface DefaultApi  {
    Single<ApiResponse<ResponseGeocoding>> geocodingReverseSearch(Double lat,Double lng,String withinCountry);
    Single<ApiResponse<ResponseGeocoding>> geocodingSearch(String query,Double focusLat,Double focusLng,String withinCountry);
    Single<ApiResponse<ResponseMapInfo>> mapInfo();
    Single<ApiResponse<ResponseRoutes>> routes(RequestRoutes requestRoutes);
    Single<ApiResponse<ResponseSupportedLocations>> supportedLocations(RequestSupportedLocations requestSupportedLocations);
    Single<ApiResponse<ResponseTimeFilter>> timeFilter(RequestTimeFilter requestTimeFilter);
    Single<ApiResponse<ResponseTimeFilterFast>> timeFilterFast(RequestTimeFilterFast requestTimeFilterFast);
    Single<ApiResponse<ResponseTimeFilterPostcodeDistricts>> timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts);
    Single<ApiResponse<ResponseTimeFilterPostcodeSectors>> timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors);
    Single<ApiResponse<ResponseTimeFilterPostcodes>> timeFilterPostcodes(RequestTimeFilterPostcodes requestTimeFilterPostcodes);
    Single<ApiResponse<ResponseTimeMap>> timeMap(RequestTimeMap requestTimeMap);
}
