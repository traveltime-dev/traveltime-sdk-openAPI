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
import java.io.FileInputStream;
import javax.validation.constraints.*;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2020-03-18T07:53:58.336Z[Etc/UTC]")

public class DefaultApiControllerImp implements DefaultApiControllerImpInterface {
    @Override
    public ResponseGeocoding geocodingReverseSearch( @NotNull Double lat,  @NotNull Double lng, String withinCountry) throws Exception {
        //Do your magic!!!
        return new ResponseGeocoding();
    }

    @Override
    public ResponseGeocoding geocodingSearch( @NotNull String query, Double focusLat, Double focusLng, String withinCountry) throws Exception {
        //Do your magic!!!
        return new ResponseGeocoding();
    }

    @Override
    public ResponseMapInfo mapInfo() throws Exception {
        //Do your magic!!!
        return new ResponseMapInfo();
    }

    @Override
    public ResponseRoutes routes(RequestRoutes requestRoutes) throws Exception {
        //Do your magic!!!
        return new ResponseRoutes();
    }

    @Override
    public ResponseSupportedLocations supportedLocations(RequestSupportedLocations requestSupportedLocations) throws Exception {
        //Do your magic!!!
        return new ResponseSupportedLocations();
    }

    @Override
    public ResponseTimeFilter timeFilter(RequestTimeFilter requestTimeFilter) throws Exception {
        //Do your magic!!!
        return new ResponseTimeFilter();
    }

    @Override
    public ResponseTimeFilterFast timeFilterFast(RequestTimeFilterFast requestTimeFilterFast) throws Exception {
        //Do your magic!!!
        return new ResponseTimeFilterFast();
    }

    @Override
    public ResponseTimeFilterPostcodeDistricts timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts) throws Exception {
        //Do your magic!!!
        return new ResponseTimeFilterPostcodeDistricts();
    }

    @Override
    public ResponseTimeFilterPostcodeSectors timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors) throws Exception {
        //Do your magic!!!
        return new ResponseTimeFilterPostcodeSectors();
    }

    @Override
    public ResponseTimeFilterPostcodes timeFilterPostcodes(RequestTimeFilterPostcodes requestTimeFilterPostcodes) throws Exception {
        //Do your magic!!!
        return new ResponseTimeFilterPostcodes();
    }

    @Override
    public ResponseTimeMap timeMap(RequestTimeMap requestTimeMap) throws Exception {
        //Do your magic!!!
        return new ResponseTimeMap();
    }

}
