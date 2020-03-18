package controllers;

import apimodels.RequestRoutes;
import apimodels.RequestSupportedLocations;
import apimodels.RequestTimeFilter;
import apimodels.RequestTimeFilterFast;
import apimodels.RequestTimeFilterPostcodeDistricts;
import apimodels.RequestTimeFilterPostcodeSectors;
import apimodels.RequestTimeFilterPostcodes;
import apimodels.RequestTimeMap;
import apimodels.ResponseError;
import apimodels.ResponseGeocoding;
import apimodels.ResponseMapInfo;
import apimodels.ResponseRoutes;
import apimodels.ResponseSupportedLocations;
import apimodels.ResponseTimeFilter;
import apimodels.ResponseTimeFilterFast;
import apimodels.ResponseTimeFilterPostcodeDistricts;
import apimodels.ResponseTimeFilterPostcodeSectors;
import apimodels.ResponseTimeFilterPostcodes;
import apimodels.ResponseTimeMap;

import play.mvc.Http;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;

import javax.validation.constraints.*;

@SuppressWarnings("RedundantThrows")
public interface DefaultApiControllerImpInterface {
    ResponseGeocoding geocodingReverseSearch( @NotNull Double lat,  @NotNull Double lng, String withinCountry) throws Exception;

    ResponseGeocoding geocodingSearch( @NotNull String query, Double focusLat, Double focusLng, String withinCountry) throws Exception;

    ResponseMapInfo mapInfo() throws Exception;

    ResponseRoutes routes(RequestRoutes requestRoutes) throws Exception;

    ResponseSupportedLocations supportedLocations(RequestSupportedLocations requestSupportedLocations) throws Exception;

    ResponseTimeFilter timeFilter(RequestTimeFilter requestTimeFilter) throws Exception;

    ResponseTimeFilterFast timeFilterFast(RequestTimeFilterFast requestTimeFilterFast) throws Exception;

    ResponseTimeFilterPostcodeDistricts timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts) throws Exception;

    ResponseTimeFilterPostcodeSectors timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors) throws Exception;

    ResponseTimeFilterPostcodes timeFilterPostcodes(RequestTimeFilterPostcodes requestTimeFilterPostcodes) throws Exception;

    ResponseTimeMap timeMap(RequestTimeMap requestTimeMap) throws Exception;

}
