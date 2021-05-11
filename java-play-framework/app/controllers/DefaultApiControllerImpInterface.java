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

import com.google.inject.Inject;
import com.typesafe.config.Config;
import play.mvc.Controller;
import play.mvc.Http;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import play.mvc.Result;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.JsonNode;
import openapitools.OpenAPIUtils;
import static play.mvc.Results.ok;
import play.libs.Files.TemporaryFile;

import javax.validation.constraints.*;

@SuppressWarnings("RedundantThrows")
public abstract class DefaultApiControllerImpInterface {
    @Inject private Config configuration;
    private ObjectMapper mapper = new ObjectMapper();

    public Result geocodingReverseSearchHttp(Http.Request request, @NotNull Double lat, @NotNull Double lng, String withinCountry) throws Exception {
        ResponseGeocoding obj = geocodingReverseSearch(request, lat, lng, withinCountry);
    if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
    }
JsonNode result = mapper.valueToTree(obj);
return ok(result);

    }

    public abstract ResponseGeocoding geocodingReverseSearch(Http.Request request, @NotNull Double lat, @NotNull Double lng, String withinCountry) throws Exception;

    public Result geocodingSearchHttp(Http.Request request, @NotNull String query, Double focusLat, Double focusLng, String withinCountry) throws Exception {
        ResponseGeocoding obj = geocodingSearch(request, query, focusLat, focusLng, withinCountry);
    if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
    }
JsonNode result = mapper.valueToTree(obj);
return ok(result);

    }

    public abstract ResponseGeocoding geocodingSearch(Http.Request request, @NotNull String query, Double focusLat, Double focusLng, String withinCountry) throws Exception;

    public Result mapInfoHttp(Http.Request request) throws Exception {
        ResponseMapInfo obj = mapInfo(request);
    if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
    }
JsonNode result = mapper.valueToTree(obj);
return ok(result);

    }

    public abstract ResponseMapInfo mapInfo(Http.Request request) throws Exception;

    public Result routesHttp(Http.Request request, RequestRoutes requestRoutes) throws Exception {
        ResponseRoutes obj = routes(request, requestRoutes);
    if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
    }
JsonNode result = mapper.valueToTree(obj);
return ok(result);

    }

    public abstract ResponseRoutes routes(Http.Request request, RequestRoutes requestRoutes) throws Exception;

    public Result supportedLocationsHttp(Http.Request request, RequestSupportedLocations requestSupportedLocations) throws Exception {
        ResponseSupportedLocations obj = supportedLocations(request, requestSupportedLocations);
    if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
    }
JsonNode result = mapper.valueToTree(obj);
return ok(result);

    }

    public abstract ResponseSupportedLocations supportedLocations(Http.Request request, RequestSupportedLocations requestSupportedLocations) throws Exception;

    public Result timeFilterHttp(Http.Request request, RequestTimeFilter requestTimeFilter) throws Exception {
        ResponseTimeFilter obj = timeFilter(request, requestTimeFilter);
    if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
    }
JsonNode result = mapper.valueToTree(obj);
return ok(result);

    }

    public abstract ResponseTimeFilter timeFilter(Http.Request request, RequestTimeFilter requestTimeFilter) throws Exception;

    public Result timeFilterFastHttp(Http.Request request, RequestTimeFilterFast requestTimeFilterFast) throws Exception {
        ResponseTimeFilterFast obj = timeFilterFast(request, requestTimeFilterFast);
    if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
    }
JsonNode result = mapper.valueToTree(obj);
return ok(result);

    }

    public abstract ResponseTimeFilterFast timeFilterFast(Http.Request request, RequestTimeFilterFast requestTimeFilterFast) throws Exception;

    public Result timeFilterPostcodeDistrictsHttp(Http.Request request, RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts) throws Exception {
        ResponseTimeFilterPostcodeDistricts obj = timeFilterPostcodeDistricts(request, requestTimeFilterPostcodeDistricts);
    if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
    }
JsonNode result = mapper.valueToTree(obj);
return ok(result);

    }

    public abstract ResponseTimeFilterPostcodeDistricts timeFilterPostcodeDistricts(Http.Request request, RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts) throws Exception;

    public Result timeFilterPostcodeSectorsHttp(Http.Request request, RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors) throws Exception {
        ResponseTimeFilterPostcodeSectors obj = timeFilterPostcodeSectors(request, requestTimeFilterPostcodeSectors);
    if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
    }
JsonNode result = mapper.valueToTree(obj);
return ok(result);

    }

    public abstract ResponseTimeFilterPostcodeSectors timeFilterPostcodeSectors(Http.Request request, RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors) throws Exception;

    public Result timeFilterPostcodesHttp(Http.Request request, RequestTimeFilterPostcodes requestTimeFilterPostcodes) throws Exception {
        ResponseTimeFilterPostcodes obj = timeFilterPostcodes(request, requestTimeFilterPostcodes);
    if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
    }
JsonNode result = mapper.valueToTree(obj);
return ok(result);

    }

    public abstract ResponseTimeFilterPostcodes timeFilterPostcodes(Http.Request request, RequestTimeFilterPostcodes requestTimeFilterPostcodes) throws Exception;

    public Result timeMapHttp(Http.Request request, RequestTimeMap requestTimeMap) throws Exception {
        ResponseTimeMap obj = timeMap(request, requestTimeMap);
    if (configuration.getBoolean("useOutputBeanValidation")) {
            OpenAPIUtils.validate(obj);
    }
JsonNode result = mapper.valueToTree(obj);
return ok(result);

    }

    public abstract ResponseTimeMap timeMap(Http.Request request, RequestTimeMap requestTimeMap) throws Exception;

}
