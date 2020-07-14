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
import org.openapitools.vertxweb.server.ApiException;

import io.reactivex.Single;

import java.util.List;
import java.util.Map;

// Implement this class

public class DefaultApiImpl implements DefaultApi {
    public Single<ApiResponse<ResponseGeocoding>> geocodingReverseSearch(Double lat,Double lng,String withinCountry) {
        return Single.error(new ApiException("Not Implemented").setStatusCode(501));
    }

    public Single<ApiResponse<ResponseGeocoding>> geocodingSearch(String query,Double focusLat,Double focusLng,String withinCountry) {
        return Single.error(new ApiException("Not Implemented").setStatusCode(501));
    }

    public Single<ApiResponse<ResponseMapInfo>> mapInfo() {
        return Single.error(new ApiException("Not Implemented").setStatusCode(501));
    }

    public Single<ApiResponse<ResponseRoutes>> routes(RequestRoutes requestRoutes) {
        return Single.error(new ApiException("Not Implemented").setStatusCode(501));
    }

    public Single<ApiResponse<ResponseSupportedLocations>> supportedLocations(RequestSupportedLocations requestSupportedLocations) {
        return Single.error(new ApiException("Not Implemented").setStatusCode(501));
    }

    public Single<ApiResponse<ResponseTimeFilter>> timeFilter(RequestTimeFilter requestTimeFilter) {
        return Single.error(new ApiException("Not Implemented").setStatusCode(501));
    }

    public Single<ApiResponse<ResponseTimeFilterFast>> timeFilterFast(RequestTimeFilterFast requestTimeFilterFast) {
        return Single.error(new ApiException("Not Implemented").setStatusCode(501));
    }

    public Single<ApiResponse<ResponseTimeFilterPostcodeDistricts>> timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts) {
        return Single.error(new ApiException("Not Implemented").setStatusCode(501));
    }

    public Single<ApiResponse<ResponseTimeFilterPostcodeSectors>> timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors) {
        return Single.error(new ApiException("Not Implemented").setStatusCode(501));
    }

    public Single<ApiResponse<ResponseTimeFilterPostcodes>> timeFilterPostcodes(RequestTimeFilterPostcodes requestTimeFilterPostcodes) {
        return Single.error(new ApiException("Not Implemented").setStatusCode(501));
    }

    public Single<ApiResponse<ResponseTimeMap>> timeMap(RequestTimeMap requestTimeMap) {
        return Single.error(new ApiException("Not Implemented").setStatusCode(501));
    }

}
