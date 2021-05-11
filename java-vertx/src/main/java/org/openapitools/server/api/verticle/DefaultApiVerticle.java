package org.openapitools.server.api.verticle;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.eventbus.Message;
import io.vertx.core.json.Json;
import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;
import io.vertx.core.logging.Logger;
import io.vertx.core.logging.LoggerFactory;

import org.openapitools.server.api.MainApiException;
import org.openapitools.server.api.model.RequestRoutes;
import org.openapitools.server.api.model.RequestSupportedLocations;
import org.openapitools.server.api.model.RequestTimeFilter;
import org.openapitools.server.api.model.RequestTimeFilterFast;
import org.openapitools.server.api.model.RequestTimeFilterPostcodeDistricts;
import org.openapitools.server.api.model.RequestTimeFilterPostcodeSectors;
import org.openapitools.server.api.model.RequestTimeFilterPostcodes;
import org.openapitools.server.api.model.RequestTimeMap;
import org.openapitools.server.api.model.ResponseError;
import org.openapitools.server.api.model.ResponseGeocoding;
import org.openapitools.server.api.model.ResponseMapInfo;
import org.openapitools.server.api.model.ResponseRoutes;
import org.openapitools.server.api.model.ResponseSupportedLocations;
import org.openapitools.server.api.model.ResponseTimeFilter;
import org.openapitools.server.api.model.ResponseTimeFilterFast;
import org.openapitools.server.api.model.ResponseTimeFilterPostcodeDistricts;
import org.openapitools.server.api.model.ResponseTimeFilterPostcodeSectors;
import org.openapitools.server.api.model.ResponseTimeFilterPostcodes;
import org.openapitools.server.api.model.ResponseTimeMap;

import java.util.List;
import java.util.Map;

public class DefaultApiVerticle extends AbstractVerticle {
    static final Logger LOGGER = LoggerFactory.getLogger(DefaultApiVerticle.class);
    
    static final String GEOCODINGREVERSESEARCH_SERVICE_ID = "geocodingReverseSearch";
    static final String GEOCODINGSEARCH_SERVICE_ID = "geocodingSearch";
    static final String MAPINFO_SERVICE_ID = "mapInfo";
    static final String ROUTES_SERVICE_ID = "routes";
    static final String SUPPORTEDLOCATIONS_SERVICE_ID = "supportedLocations";
    static final String TIMEFILTER_SERVICE_ID = "timeFilter";
    static final String TIMEFILTERFAST_SERVICE_ID = "timeFilterFast";
    static final String TIMEFILTERPOSTCODEDISTRICTS_SERVICE_ID = "timeFilterPostcodeDistricts";
    static final String TIMEFILTERPOSTCODESECTORS_SERVICE_ID = "timeFilterPostcodeSectors";
    static final String TIMEFILTERPOSTCODES_SERVICE_ID = "timeFilterPostcodes";
    static final String TIMEMAP_SERVICE_ID = "timeMap";
    
    final DefaultApi service;

    public DefaultApiVerticle() {
        try {
            Class serviceImplClass = getClass().getClassLoader().loadClass("org.openapitools.server.api.verticle.DefaultApiImpl");
            service = (DefaultApi)serviceImplClass.newInstance();
        } catch (Exception e) {
            logUnexpectedError("DefaultApiVerticle constructor", e);
            throw new RuntimeException(e);
        }
    }

    @Override
    public void start() throws Exception {
        
        //Consumer for geocodingReverseSearch
        vertx.eventBus().<JsonObject> consumer(GEOCODINGREVERSESEARCH_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "geocodingReverseSearch";
                String latParam = message.body().getString("lat");
                if(latParam == null) {
                    manageError(message, new MainApiException(400, "lat is required"), serviceId);
                    return;
                }
                Double lat = Json.mapper.readValue(latParam, Double.class);
                String lngParam = message.body().getString("lng");
                if(lngParam == null) {
                    manageError(message, new MainApiException(400, "lng is required"), serviceId);
                    return;
                }
                Double lng = Json.mapper.readValue(lngParam, Double.class);
                String withinCountryParam = message.body().getString("within.country");
                String withinCountry = (withinCountryParam == null) ? null : withinCountryParam;
                service.geocodingReverseSearch(lat, lng, withinCountry, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "geocodingReverseSearch");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("geocodingReverseSearch", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for geocodingSearch
        vertx.eventBus().<JsonObject> consumer(GEOCODINGSEARCH_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "geocodingSearch";
                String queryParam = message.body().getString("query");
                if(queryParam == null) {
                    manageError(message, new MainApiException(400, "query is required"), serviceId);
                    return;
                }
                String query = queryParam;
                String focusLatParam = message.body().getString("focus.lat");
                Double focusLat = (focusLatParam == null) ? null : Json.mapper.readValue(focusLatParam, Double.class);
                String focusLngParam = message.body().getString("focus.lng");
                Double focusLng = (focusLngParam == null) ? null : Json.mapper.readValue(focusLngParam, Double.class);
                String withinCountryParam = message.body().getString("within.country");
                String withinCountry = (withinCountryParam == null) ? null : withinCountryParam;
                service.geocodingSearch(query, focusLat, focusLng, withinCountry, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "geocodingSearch");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("geocodingSearch", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for mapInfo
        vertx.eventBus().<JsonObject> consumer(MAPINFO_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "mapInfo";
                service.mapInfo(result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "mapInfo");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("mapInfo", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for routes
        vertx.eventBus().<JsonObject> consumer(ROUTES_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "routes";
                JsonObject requestRoutesParam = message.body().getJsonObject("RequestRoutes");
                if (requestRoutesParam == null) {
                    manageError(message, new MainApiException(400, "RequestRoutes is required"), serviceId);
                    return;
                }
                RequestRoutes requestRoutes = Json.mapper.readValue(requestRoutesParam.encode(), RequestRoutes.class);
                service.routes(requestRoutes, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "routes");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("routes", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for supportedLocations
        vertx.eventBus().<JsonObject> consumer(SUPPORTEDLOCATIONS_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "supportedLocations";
                JsonObject requestSupportedLocationsParam = message.body().getJsonObject("RequestSupportedLocations");
                if (requestSupportedLocationsParam == null) {
                    manageError(message, new MainApiException(400, "RequestSupportedLocations is required"), serviceId);
                    return;
                }
                RequestSupportedLocations requestSupportedLocations = Json.mapper.readValue(requestSupportedLocationsParam.encode(), RequestSupportedLocations.class);
                service.supportedLocations(requestSupportedLocations, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "supportedLocations");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("supportedLocations", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for timeFilter
        vertx.eventBus().<JsonObject> consumer(TIMEFILTER_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "timeFilter";
                JsonObject requestTimeFilterParam = message.body().getJsonObject("RequestTimeFilter");
                if (requestTimeFilterParam == null) {
                    manageError(message, new MainApiException(400, "RequestTimeFilter is required"), serviceId);
                    return;
                }
                RequestTimeFilter requestTimeFilter = Json.mapper.readValue(requestTimeFilterParam.encode(), RequestTimeFilter.class);
                service.timeFilter(requestTimeFilter, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "timeFilter");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("timeFilter", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for timeFilterFast
        vertx.eventBus().<JsonObject> consumer(TIMEFILTERFAST_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "timeFilterFast";
                JsonObject requestTimeFilterFastParam = message.body().getJsonObject("RequestTimeFilterFast");
                if (requestTimeFilterFastParam == null) {
                    manageError(message, new MainApiException(400, "RequestTimeFilterFast is required"), serviceId);
                    return;
                }
                RequestTimeFilterFast requestTimeFilterFast = Json.mapper.readValue(requestTimeFilterFastParam.encode(), RequestTimeFilterFast.class);
                service.timeFilterFast(requestTimeFilterFast, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "timeFilterFast");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("timeFilterFast", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for timeFilterPostcodeDistricts
        vertx.eventBus().<JsonObject> consumer(TIMEFILTERPOSTCODEDISTRICTS_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "timeFilterPostcodeDistricts";
                JsonObject requestTimeFilterPostcodeDistrictsParam = message.body().getJsonObject("RequestTimeFilterPostcodeDistricts");
                if (requestTimeFilterPostcodeDistrictsParam == null) {
                    manageError(message, new MainApiException(400, "RequestTimeFilterPostcodeDistricts is required"), serviceId);
                    return;
                }
                RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts = Json.mapper.readValue(requestTimeFilterPostcodeDistrictsParam.encode(), RequestTimeFilterPostcodeDistricts.class);
                service.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "timeFilterPostcodeDistricts");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("timeFilterPostcodeDistricts", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for timeFilterPostcodeSectors
        vertx.eventBus().<JsonObject> consumer(TIMEFILTERPOSTCODESECTORS_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "timeFilterPostcodeSectors";
                JsonObject requestTimeFilterPostcodeSectorsParam = message.body().getJsonObject("RequestTimeFilterPostcodeSectors");
                if (requestTimeFilterPostcodeSectorsParam == null) {
                    manageError(message, new MainApiException(400, "RequestTimeFilterPostcodeSectors is required"), serviceId);
                    return;
                }
                RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors = Json.mapper.readValue(requestTimeFilterPostcodeSectorsParam.encode(), RequestTimeFilterPostcodeSectors.class);
                service.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "timeFilterPostcodeSectors");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("timeFilterPostcodeSectors", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for timeFilterPostcodes
        vertx.eventBus().<JsonObject> consumer(TIMEFILTERPOSTCODES_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "timeFilterPostcodes";
                JsonObject requestTimeFilterPostcodesParam = message.body().getJsonObject("RequestTimeFilterPostcodes");
                if (requestTimeFilterPostcodesParam == null) {
                    manageError(message, new MainApiException(400, "RequestTimeFilterPostcodes is required"), serviceId);
                    return;
                }
                RequestTimeFilterPostcodes requestTimeFilterPostcodes = Json.mapper.readValue(requestTimeFilterPostcodesParam.encode(), RequestTimeFilterPostcodes.class);
                service.timeFilterPostcodes(requestTimeFilterPostcodes, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "timeFilterPostcodes");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("timeFilterPostcodes", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
        //Consumer for timeMap
        vertx.eventBus().<JsonObject> consumer(TIMEMAP_SERVICE_ID).handler(message -> {
            try {
                // Workaround for #allParams section clearing the vendorExtensions map
                String serviceId = "timeMap";
                JsonObject requestTimeMapParam = message.body().getJsonObject("RequestTimeMap");
                if (requestTimeMapParam == null) {
                    manageError(message, new MainApiException(400, "RequestTimeMap is required"), serviceId);
                    return;
                }
                RequestTimeMap requestTimeMap = Json.mapper.readValue(requestTimeMapParam.encode(), RequestTimeMap.class);
                service.timeMap(requestTimeMap, result -> {
                    if (result.succeeded())
                        message.reply(new JsonObject(Json.encode(result.result())).encodePrettily());
                    else {
                        Throwable cause = result.cause();
                        manageError(message, cause, "timeMap");
                    }
                });
            } catch (Exception e) {
                logUnexpectedError("timeMap", e);
                message.fail(MainApiException.INTERNAL_SERVER_ERROR.getStatusCode(), MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage());
            }
        });
        
    }
    
    private void manageError(Message<JsonObject> message, Throwable cause, String serviceName) {
        int code = MainApiException.INTERNAL_SERVER_ERROR.getStatusCode();
        String statusMessage = MainApiException.INTERNAL_SERVER_ERROR.getStatusMessage();
        if (cause instanceof MainApiException) {
            code = ((MainApiException)cause).getStatusCode();
            statusMessage = ((MainApiException)cause).getStatusMessage();
        } else {
            logUnexpectedError(serviceName, cause); 
        }
            
        message.fail(code, statusMessage);
    }
    
    private void logUnexpectedError(String serviceName, Throwable cause) {
        LOGGER.error("Unexpected error in "+ serviceName, cause);
    }
}
