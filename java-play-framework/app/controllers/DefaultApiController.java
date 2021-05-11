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

import com.typesafe.config.Config;
import play.mvc.Controller;
import play.mvc.Result;
import play.mvc.Http;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.inject.Inject;
import java.io.File;
import play.libs.Files.TemporaryFile;
import openapitools.OpenAPIUtils;
import com.fasterxml.jackson.core.type.TypeReference;

import javax.validation.constraints.*;
import com.typesafe.config.Config;

import openapitools.OpenAPIUtils.ApiAction;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-11T08:37:59.786Z[Etc/UTC]")
public class DefaultApiController extends Controller {
    private final DefaultApiControllerImpInterface imp;
    private final ObjectMapper mapper;
    private final Config configuration;

    @Inject
    private DefaultApiController(Config configuration, DefaultApiControllerImpInterface imp) {
        this.imp = imp;
        mapper = new ObjectMapper();
        this.configuration = configuration;
    }

    @ApiAction
    public Result geocodingReverseSearch(Http.Request request) throws Exception {
        String valuelat = request.getQueryString("lat");
        Double lat;
        if (valuelat != null) {
            lat = Double.parseDouble(valuelat);
        } else {
            throw new IllegalArgumentException("'lat' parameter is required");
        }
        String valuelng = request.getQueryString("lng");
        Double lng;
        if (valuelng != null) {
            lng = Double.parseDouble(valuelng);
        } else {
            throw new IllegalArgumentException("'lng' parameter is required");
        }
        String valuewithinCountry = request.getQueryString("within.country");
        String withinCountry;
        if (valuewithinCountry != null) {
            withinCountry = valuewithinCountry;
        } else {
            withinCountry = null;
        }
        return imp.geocodingReverseSearchHttp(request, lat, lng, withinCountry);
    }

    @ApiAction
    public Result geocodingSearch(Http.Request request) throws Exception {
        String valuequery = request.getQueryString("query");
        String query;
        if (valuequery != null) {
            query = valuequery;
        } else {
            throw new IllegalArgumentException("'query' parameter is required");
        }
        String valuefocusLat = request.getQueryString("focus.lat");
        Double focusLat;
        if (valuefocusLat != null) {
            focusLat = Double.parseDouble(valuefocusLat);
        } else {
            focusLat = null;
        }
        String valuefocusLng = request.getQueryString("focus.lng");
        Double focusLng;
        if (valuefocusLng != null) {
            focusLng = Double.parseDouble(valuefocusLng);
        } else {
            focusLng = null;
        }
        String valuewithinCountry = request.getQueryString("within.country");
        String withinCountry;
        if (valuewithinCountry != null) {
            withinCountry = valuewithinCountry;
        } else {
            withinCountry = null;
        }
        return imp.geocodingSearchHttp(request, query, focusLat, focusLng, withinCountry);
    }

    @ApiAction
    public Result mapInfo(Http.Request request) throws Exception {
        return imp.mapInfoHttp(request);
    }

    @ApiAction
    public Result routes(Http.Request request) throws Exception {
        JsonNode noderequestRoutes = request.body().asJson();
        RequestRoutes requestRoutes;
        if (noderequestRoutes != null) {
            requestRoutes = mapper.readValue(noderequestRoutes.toString(), RequestRoutes.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(requestRoutes);
            }
        } else {
            throw new IllegalArgumentException("'RequestRoutes' parameter is required");
        }
        return imp.routesHttp(request, requestRoutes);
    }

    @ApiAction
    public Result supportedLocations(Http.Request request) throws Exception {
        JsonNode noderequestSupportedLocations = request.body().asJson();
        RequestSupportedLocations requestSupportedLocations;
        if (noderequestSupportedLocations != null) {
            requestSupportedLocations = mapper.readValue(noderequestSupportedLocations.toString(), RequestSupportedLocations.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(requestSupportedLocations);
            }
        } else {
            throw new IllegalArgumentException("'RequestSupportedLocations' parameter is required");
        }
        return imp.supportedLocationsHttp(request, requestSupportedLocations);
    }

    @ApiAction
    public Result timeFilter(Http.Request request) throws Exception {
        JsonNode noderequestTimeFilter = request.body().asJson();
        RequestTimeFilter requestTimeFilter;
        if (noderequestTimeFilter != null) {
            requestTimeFilter = mapper.readValue(noderequestTimeFilter.toString(), RequestTimeFilter.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(requestTimeFilter);
            }
        } else {
            throw new IllegalArgumentException("'RequestTimeFilter' parameter is required");
        }
        return imp.timeFilterHttp(request, requestTimeFilter);
    }

    @ApiAction
    public Result timeFilterFast(Http.Request request) throws Exception {
        JsonNode noderequestTimeFilterFast = request.body().asJson();
        RequestTimeFilterFast requestTimeFilterFast;
        if (noderequestTimeFilterFast != null) {
            requestTimeFilterFast = mapper.readValue(noderequestTimeFilterFast.toString(), RequestTimeFilterFast.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(requestTimeFilterFast);
            }
        } else {
            throw new IllegalArgumentException("'RequestTimeFilterFast' parameter is required");
        }
        return imp.timeFilterFastHttp(request, requestTimeFilterFast);
    }

    @ApiAction
    public Result timeFilterPostcodeDistricts(Http.Request request) throws Exception {
        JsonNode noderequestTimeFilterPostcodeDistricts = request.body().asJson();
        RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts;
        if (noderequestTimeFilterPostcodeDistricts != null) {
            requestTimeFilterPostcodeDistricts = mapper.readValue(noderequestTimeFilterPostcodeDistricts.toString(), RequestTimeFilterPostcodeDistricts.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(requestTimeFilterPostcodeDistricts);
            }
        } else {
            throw new IllegalArgumentException("'RequestTimeFilterPostcodeDistricts' parameter is required");
        }
        return imp.timeFilterPostcodeDistrictsHttp(request, requestTimeFilterPostcodeDistricts);
    }

    @ApiAction
    public Result timeFilterPostcodeSectors(Http.Request request) throws Exception {
        JsonNode noderequestTimeFilterPostcodeSectors = request.body().asJson();
        RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors;
        if (noderequestTimeFilterPostcodeSectors != null) {
            requestTimeFilterPostcodeSectors = mapper.readValue(noderequestTimeFilterPostcodeSectors.toString(), RequestTimeFilterPostcodeSectors.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(requestTimeFilterPostcodeSectors);
            }
        } else {
            throw new IllegalArgumentException("'RequestTimeFilterPostcodeSectors' parameter is required");
        }
        return imp.timeFilterPostcodeSectorsHttp(request, requestTimeFilterPostcodeSectors);
    }

    @ApiAction
    public Result timeFilterPostcodes(Http.Request request) throws Exception {
        JsonNode noderequestTimeFilterPostcodes = request.body().asJson();
        RequestTimeFilterPostcodes requestTimeFilterPostcodes;
        if (noderequestTimeFilterPostcodes != null) {
            requestTimeFilterPostcodes = mapper.readValue(noderequestTimeFilterPostcodes.toString(), RequestTimeFilterPostcodes.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(requestTimeFilterPostcodes);
            }
        } else {
            throw new IllegalArgumentException("'RequestTimeFilterPostcodes' parameter is required");
        }
        return imp.timeFilterPostcodesHttp(request, requestTimeFilterPostcodes);
    }

    @ApiAction
    public Result timeMap(Http.Request request) throws Exception {
        JsonNode noderequestTimeMap = request.body().asJson();
        RequestTimeMap requestTimeMap;
        if (noderequestTimeMap != null) {
            requestTimeMap = mapper.readValue(noderequestTimeMap.toString(), RequestTimeMap.class);
            if (configuration.getBoolean("useInputBeanValidation")) {
                OpenAPIUtils.validate(requestTimeMap);
            }
        } else {
            throw new IllegalArgumentException("'RequestTimeMap' parameter is required");
        }
        return imp.timeMapHttp(request, requestTimeMap);
    }

}
