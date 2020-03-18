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

import play.mvc.Controller;
import play.mvc.Result;
import play.mvc.Http;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.inject.Inject;
import java.io.File;
import openapitools.OpenAPIUtils;
import com.fasterxml.jackson.core.type.TypeReference;

import javax.validation.constraints.*;
import play.Configuration;

import openapitools.OpenAPIUtils.ApiAction;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2020-03-18T08:50:52.411Z[Etc/UTC]")

public class DefaultApiController extends Controller {

    private final DefaultApiControllerImpInterface imp;
    private final ObjectMapper mapper;
    private final Configuration configuration;

    @Inject
    private DefaultApiController(Configuration configuration, DefaultApiControllerImpInterface imp) {
        this.imp = imp;
        mapper = new ObjectMapper();
        this.configuration = configuration;
    }


    @ApiAction
    public Result geocodingReverseSearch() throws Exception {
        String valuelat = request().getQueryString("lat");
        Double lat;
        if (valuelat != null) {
            lat = Double.parseDouble(valuelat);
        } else {
            throw new IllegalArgumentException("'lat' parameter is required");
        }
        String valuelng = request().getQueryString("lng");
        Double lng;
        if (valuelng != null) {
            lng = Double.parseDouble(valuelng);
        } else {
            throw new IllegalArgumentException("'lng' parameter is required");
        }
        String valuewithinCountry = request().getQueryString("within.country");
        String withinCountry;
        if (valuewithinCountry != null) {
            withinCountry = valuewithinCountry;
        } else {
            withinCountry = null;
        }
        ResponseGeocoding obj = imp.geocodingReverseSearch(lat, lng, withinCountry);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result geocodingSearch() throws Exception {
        String valuequery = request().getQueryString("query");
        String query;
        if (valuequery != null) {
            query = valuequery;
        } else {
            throw new IllegalArgumentException("'query' parameter is required");
        }
        String valuefocusLat = request().getQueryString("focus.lat");
        Double focusLat;
        if (valuefocusLat != null) {
            focusLat = Double.parseDouble(valuefocusLat);
        } else {
            focusLat = null;
        }
        String valuefocusLng = request().getQueryString("focus.lng");
        Double focusLng;
        if (valuefocusLng != null) {
            focusLng = Double.parseDouble(valuefocusLng);
        } else {
            focusLng = null;
        }
        String valuewithinCountry = request().getQueryString("within.country");
        String withinCountry;
        if (valuewithinCountry != null) {
            withinCountry = valuewithinCountry;
        } else {
            withinCountry = null;
        }
        ResponseGeocoding obj = imp.geocodingSearch(query, focusLat, focusLng, withinCountry);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result mapInfo() throws Exception {
        ResponseMapInfo obj = imp.mapInfo();
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result routes() throws Exception {
        JsonNode noderequestRoutes = request().body().asJson();
        RequestRoutes requestRoutes;
        if (noderequestRoutes != null) {
            requestRoutes = mapper.readValue(noderequestRoutes.toString(), RequestRoutes.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(requestRoutes);
            }
        } else {
            throw new IllegalArgumentException("'RequestRoutes' parameter is required");
        }
        ResponseRoutes obj = imp.routes(requestRoutes);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result supportedLocations() throws Exception {
        JsonNode noderequestSupportedLocations = request().body().asJson();
        RequestSupportedLocations requestSupportedLocations;
        if (noderequestSupportedLocations != null) {
            requestSupportedLocations = mapper.readValue(noderequestSupportedLocations.toString(), RequestSupportedLocations.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(requestSupportedLocations);
            }
        } else {
            throw new IllegalArgumentException("'RequestSupportedLocations' parameter is required");
        }
        ResponseSupportedLocations obj = imp.supportedLocations(requestSupportedLocations);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result timeFilter() throws Exception {
        JsonNode noderequestTimeFilter = request().body().asJson();
        RequestTimeFilter requestTimeFilter;
        if (noderequestTimeFilter != null) {
            requestTimeFilter = mapper.readValue(noderequestTimeFilter.toString(), RequestTimeFilter.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(requestTimeFilter);
            }
        } else {
            throw new IllegalArgumentException("'RequestTimeFilter' parameter is required");
        }
        ResponseTimeFilter obj = imp.timeFilter(requestTimeFilter);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result timeFilterFast() throws Exception {
        JsonNode noderequestTimeFilterFast = request().body().asJson();
        RequestTimeFilterFast requestTimeFilterFast;
        if (noderequestTimeFilterFast != null) {
            requestTimeFilterFast = mapper.readValue(noderequestTimeFilterFast.toString(), RequestTimeFilterFast.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(requestTimeFilterFast);
            }
        } else {
            throw new IllegalArgumentException("'RequestTimeFilterFast' parameter is required");
        }
        ResponseTimeFilterFast obj = imp.timeFilterFast(requestTimeFilterFast);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result timeFilterPostcodeDistricts() throws Exception {
        JsonNode noderequestTimeFilterPostcodeDistricts = request().body().asJson();
        RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts;
        if (noderequestTimeFilterPostcodeDistricts != null) {
            requestTimeFilterPostcodeDistricts = mapper.readValue(noderequestTimeFilterPostcodeDistricts.toString(), RequestTimeFilterPostcodeDistricts.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(requestTimeFilterPostcodeDistricts);
            }
        } else {
            throw new IllegalArgumentException("'RequestTimeFilterPostcodeDistricts' parameter is required");
        }
        ResponseTimeFilterPostcodeDistricts obj = imp.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result timeFilterPostcodeSectors() throws Exception {
        JsonNode noderequestTimeFilterPostcodeSectors = request().body().asJson();
        RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors;
        if (noderequestTimeFilterPostcodeSectors != null) {
            requestTimeFilterPostcodeSectors = mapper.readValue(noderequestTimeFilterPostcodeSectors.toString(), RequestTimeFilterPostcodeSectors.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(requestTimeFilterPostcodeSectors);
            }
        } else {
            throw new IllegalArgumentException("'RequestTimeFilterPostcodeSectors' parameter is required");
        }
        ResponseTimeFilterPostcodeSectors obj = imp.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result timeFilterPostcodes() throws Exception {
        JsonNode noderequestTimeFilterPostcodes = request().body().asJson();
        RequestTimeFilterPostcodes requestTimeFilterPostcodes;
        if (noderequestTimeFilterPostcodes != null) {
            requestTimeFilterPostcodes = mapper.readValue(noderequestTimeFilterPostcodes.toString(), RequestTimeFilterPostcodes.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(requestTimeFilterPostcodes);
            }
        } else {
            throw new IllegalArgumentException("'RequestTimeFilterPostcodes' parameter is required");
        }
        ResponseTimeFilterPostcodes obj = imp.timeFilterPostcodes(requestTimeFilterPostcodes);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }

    @ApiAction
    public Result timeMap() throws Exception {
        JsonNode noderequestTimeMap = request().body().asJson();
        RequestTimeMap requestTimeMap;
        if (noderequestTimeMap != null) {
            requestTimeMap = mapper.readValue(noderequestTimeMap.toString(), RequestTimeMap.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(requestTimeMap);
            }
        } else {
            throw new IllegalArgumentException("'RequestTimeMap' parameter is required");
        }
        ResponseTimeMap obj = imp.timeMap(requestTimeMap);
        if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
        }
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
    }
}
