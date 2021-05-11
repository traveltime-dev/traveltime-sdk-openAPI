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
import java.util.LinkedHashSet;
import java.io.FileInputStream;
import play.libs.Files.TemporaryFile;
import javax.validation.constraints.*;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-11T08:37:59.786Z[Etc/UTC]")
public class DefaultApiControllerImp extends DefaultApiControllerImpInterface {
    @Override
    public ResponseGeocoding geocodingReverseSearch(Http.Request request, @NotNull Double lat, @NotNull Double lng, String withinCountry) throws Exception {
        //Do your magic!!!
        return new ResponseGeocoding();
    }

    @Override
    public ResponseGeocoding geocodingSearch(Http.Request request, @NotNull String query, Double focusLat, Double focusLng, String withinCountry) throws Exception {
        //Do your magic!!!
        return new ResponseGeocoding();
    }

    @Override
    public ResponseMapInfo mapInfo(Http.Request request) throws Exception {
        //Do your magic!!!
        return new ResponseMapInfo();
    }

    @Override
    public ResponseRoutes routes(Http.Request request, RequestRoutes requestRoutes) throws Exception {
        //Do your magic!!!
        return new ResponseRoutes();
    }

    @Override
    public ResponseSupportedLocations supportedLocations(Http.Request request, RequestSupportedLocations requestSupportedLocations) throws Exception {
        //Do your magic!!!
        return new ResponseSupportedLocations();
    }

    @Override
    public ResponseTimeFilter timeFilter(Http.Request request, RequestTimeFilter requestTimeFilter) throws Exception {
        //Do your magic!!!
        return new ResponseTimeFilter();
    }

    @Override
    public ResponseTimeFilterFast timeFilterFast(Http.Request request, RequestTimeFilterFast requestTimeFilterFast) throws Exception {
        //Do your magic!!!
        return new ResponseTimeFilterFast();
    }

    @Override
    public ResponseTimeFilterPostcodeDistricts timeFilterPostcodeDistricts(Http.Request request, RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts) throws Exception {
        //Do your magic!!!
        return new ResponseTimeFilterPostcodeDistricts();
    }

    @Override
    public ResponseTimeFilterPostcodeSectors timeFilterPostcodeSectors(Http.Request request, RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors) throws Exception {
        //Do your magic!!!
        return new ResponseTimeFilterPostcodeSectors();
    }

    @Override
    public ResponseTimeFilterPostcodes timeFilterPostcodes(Http.Request request, RequestTimeFilterPostcodes requestTimeFilterPostcodes) throws Exception {
        //Do your magic!!!
        return new ResponseTimeFilterPostcodes();
    }

    @Override
    public ResponseTimeMap timeMap(Http.Request request, RequestTimeMap requestTimeMap) throws Exception {
        //Do your magic!!!
        return new ResponseTimeMap();
    }

}
