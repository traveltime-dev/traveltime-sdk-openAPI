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
import io.vertx.ext.web.handler.impl.HttpStatusException;

import java.util.List;
import java.util.Map;

// Implement this class

public class DefaultApiImpl implements DefaultApi {
    public Future<ApiResponse<ResponseGeocoding>> geocodingReverseSearch(Double lat, Double lng, String withinCountry) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<ResponseGeocoding>> geocodingSearch(String query, Double focusLat, Double focusLng, String withinCountry) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<ResponseMapInfo>> mapInfo() {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<ResponseRoutes>> routes(RequestRoutes requestRoutes) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<ResponseSupportedLocations>> supportedLocations(RequestSupportedLocations requestSupportedLocations) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<ResponseTimeFilter>> timeFilter(RequestTimeFilter requestTimeFilter) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<ResponseTimeFilterFast>> timeFilterFast(RequestTimeFilterFast requestTimeFilterFast) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<ResponseTimeFilterPostcodeDistricts>> timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<ResponseTimeFilterPostcodeSectors>> timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<ResponseTimeFilterPostcodes>> timeFilterPostcodes(RequestTimeFilterPostcodes requestTimeFilterPostcodes) {
        return Future.failedFuture(new HttpStatusException(501));
    }

    public Future<ApiResponse<ResponseTimeMap>> timeMap(RequestTimeMap requestTimeMap) {
        return Future.failedFuture(new HttpStatusException(501));
    }

}
