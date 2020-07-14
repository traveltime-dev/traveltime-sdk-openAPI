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

import org.openapitools.vertxweb.server.ParameterCast;
import org.openapitools.vertxweb.server.ApiException;

import com.fasterxml.jackson.core.type.TypeReference;
import io.vertx.core.json.Json;
import io.vertx.core.Handler;
import io.vertx.core.http.HttpServerResponse;
import io.vertx.ext.web.RoutingContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import io.reactivex.Single;

import java.util.List;
import java.util.Map;

public class DefaultApiHandler {

    private static final Logger logger = LoggerFactory.getLogger(DefaultApiHandler.class);
    private DefaultApi apiImpl = new DefaultApiImpl();

    public DefaultApiHandler(Map<String, Handler<RoutingContext>> operationHandlers) {
        operationHandlers.put("geocodingReverseSearch", this::geocodingReverseSearch);
        operationHandlers.put("geocodingSearch", this::geocodingSearch);
        operationHandlers.put("mapInfo", this::mapInfo);
        operationHandlers.put("routes", this::routes);
        operationHandlers.put("supportedLocations", this::supportedLocations);
        operationHandlers.put("timeFilter", this::timeFilter);
        operationHandlers.put("timeFilterFast", this::timeFilterFast);
        operationHandlers.put("timeFilterPostcodeDistricts", this::timeFilterPostcodeDistricts);
        operationHandlers.put("timeFilterPostcodeSectors", this::timeFilterPostcodeSectors);
        operationHandlers.put("timeFilterPostcodes", this::timeFilterPostcodes);
        operationHandlers.put("timeMap", this::timeMap);
    }

    private void geocodingReverseSearch(RoutingContext routingContext) {
        logger.info("geocodingReverseSearch()");
        HttpServerResponse response = routingContext.response();

        Single.defer( () -> {
            Double lat = ParameterCast.toDouble(routingContext.queryParams().get("lat"));
            Double lng = ParameterCast.toDouble(routingContext.queryParams().get("lng"));
            String withinCountry = ParameterCast.toString(routingContext.queryParams().get("within.country"));

            logger.info("Parameter lat is {}", lat);
            logger.info("Parameter lng is {}", lng);
            logger.info("Parameter withinCountry is {}", withinCountry);
            return apiImpl.geocodingReverseSearch(lat, lng, withinCountry);
        })
        .subscribe(
            apiResponse -> {
                response.setStatusCode(apiResponse.getStatusCode())
                        .end(Json.encodePrettily(apiResponse.getData()));
            }, error -> {
                if (error instanceof ApiException) {
                    ApiException apiException = (ApiException) error;
                    response.setStatusCode(apiException.getStatusCode()).end(apiException.getMessage());
                } else {
                    response.setStatusCode(500).end(error.getMessage());
                }
            }).dispose();
    }


    private void geocodingSearch(RoutingContext routingContext) {
        logger.info("geocodingSearch()");
        HttpServerResponse response = routingContext.response();

        Single.defer( () -> {
            String query = ParameterCast.toString(routingContext.queryParams().get("query"));
            Double focusLat = ParameterCast.toDouble(routingContext.queryParams().get("focus.lat"));
            Double focusLng = ParameterCast.toDouble(routingContext.queryParams().get("focus.lng"));
            String withinCountry = ParameterCast.toString(routingContext.queryParams().get("within.country"));

            logger.info("Parameter query is {}", query);
            logger.info("Parameter focusLat is {}", focusLat);
            logger.info("Parameter focusLng is {}", focusLng);
            logger.info("Parameter withinCountry is {}", withinCountry);
            return apiImpl.geocodingSearch(query, focusLat, focusLng, withinCountry);
        })
        .subscribe(
            apiResponse -> {
                response.setStatusCode(apiResponse.getStatusCode())
                        .end(Json.encodePrettily(apiResponse.getData()));
            }, error -> {
                if (error instanceof ApiException) {
                    ApiException apiException = (ApiException) error;
                    response.setStatusCode(apiException.getStatusCode()).end(apiException.getMessage());
                } else {
                    response.setStatusCode(500).end(error.getMessage());
                }
            }).dispose();
    }


    private void mapInfo(RoutingContext routingContext) {
        logger.info("mapInfo()");
        HttpServerResponse response = routingContext.response();

        Single.defer( () -> {

            return apiImpl.mapInfo();
        })
        .subscribe(
            apiResponse -> {
                response.setStatusCode(apiResponse.getStatusCode())
                        .end(Json.encodePrettily(apiResponse.getData()));
            }, error -> {
                if (error instanceof ApiException) {
                    ApiException apiException = (ApiException) error;
                    response.setStatusCode(apiException.getStatusCode()).end(apiException.getMessage());
                } else {
                    response.setStatusCode(500).end(error.getMessage());
                }
            }).dispose();
    }


    private void routes(RoutingContext routingContext) {
        logger.info("routes()");
        HttpServerResponse response = routingContext.response();

        Single.defer( () -> {

            String jsonString = routingContext.getBodyAsString();
            RequestRoutes requestRoutes = jsonString == null ? null : Json.decodeValue(jsonString, new TypeReference<RequestRoutes>(){});
            logger.info("Parameter requestRoutes is {}", requestRoutes);
            return apiImpl.routes(requestRoutes);
        })
        .subscribe(
            apiResponse -> {
                response.setStatusCode(apiResponse.getStatusCode())
                        .end(Json.encodePrettily(apiResponse.getData()));
            }, error -> {
                if (error instanceof ApiException) {
                    ApiException apiException = (ApiException) error;
                    response.setStatusCode(apiException.getStatusCode()).end(apiException.getMessage());
                } else {
                    response.setStatusCode(500).end(error.getMessage());
                }
            }).dispose();
    }


    private void supportedLocations(RoutingContext routingContext) {
        logger.info("supportedLocations()");
        HttpServerResponse response = routingContext.response();

        Single.defer( () -> {

            String jsonString = routingContext.getBodyAsString();
            RequestSupportedLocations requestSupportedLocations = jsonString == null ? null : Json.decodeValue(jsonString, new TypeReference<RequestSupportedLocations>(){});
            logger.info("Parameter requestSupportedLocations is {}", requestSupportedLocations);
            return apiImpl.supportedLocations(requestSupportedLocations);
        })
        .subscribe(
            apiResponse -> {
                response.setStatusCode(apiResponse.getStatusCode())
                        .end(Json.encodePrettily(apiResponse.getData()));
            }, error -> {
                if (error instanceof ApiException) {
                    ApiException apiException = (ApiException) error;
                    response.setStatusCode(apiException.getStatusCode()).end(apiException.getMessage());
                } else {
                    response.setStatusCode(500).end(error.getMessage());
                }
            }).dispose();
    }


    private void timeFilter(RoutingContext routingContext) {
        logger.info("timeFilter()");
        HttpServerResponse response = routingContext.response();

        Single.defer( () -> {

            String jsonString = routingContext.getBodyAsString();
            RequestTimeFilter requestTimeFilter = jsonString == null ? null : Json.decodeValue(jsonString, new TypeReference<RequestTimeFilter>(){});
            logger.info("Parameter requestTimeFilter is {}", requestTimeFilter);
            return apiImpl.timeFilter(requestTimeFilter);
        })
        .subscribe(
            apiResponse -> {
                response.setStatusCode(apiResponse.getStatusCode())
                        .end(Json.encodePrettily(apiResponse.getData()));
            }, error -> {
                if (error instanceof ApiException) {
                    ApiException apiException = (ApiException) error;
                    response.setStatusCode(apiException.getStatusCode()).end(apiException.getMessage());
                } else {
                    response.setStatusCode(500).end(error.getMessage());
                }
            }).dispose();
    }


    private void timeFilterFast(RoutingContext routingContext) {
        logger.info("timeFilterFast()");
        HttpServerResponse response = routingContext.response();

        Single.defer( () -> {

            String jsonString = routingContext.getBodyAsString();
            RequestTimeFilterFast requestTimeFilterFast = jsonString == null ? null : Json.decodeValue(jsonString, new TypeReference<RequestTimeFilterFast>(){});
            logger.info("Parameter requestTimeFilterFast is {}", requestTimeFilterFast);
            return apiImpl.timeFilterFast(requestTimeFilterFast);
        })
        .subscribe(
            apiResponse -> {
                response.setStatusCode(apiResponse.getStatusCode())
                        .end(Json.encodePrettily(apiResponse.getData()));
            }, error -> {
                if (error instanceof ApiException) {
                    ApiException apiException = (ApiException) error;
                    response.setStatusCode(apiException.getStatusCode()).end(apiException.getMessage());
                } else {
                    response.setStatusCode(500).end(error.getMessage());
                }
            }).dispose();
    }


    private void timeFilterPostcodeDistricts(RoutingContext routingContext) {
        logger.info("timeFilterPostcodeDistricts()");
        HttpServerResponse response = routingContext.response();

        Single.defer( () -> {

            String jsonString = routingContext.getBodyAsString();
            RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts = jsonString == null ? null : Json.decodeValue(jsonString, new TypeReference<RequestTimeFilterPostcodeDistricts>(){});
            logger.info("Parameter requestTimeFilterPostcodeDistricts is {}", requestTimeFilterPostcodeDistricts);
            return apiImpl.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts);
        })
        .subscribe(
            apiResponse -> {
                response.setStatusCode(apiResponse.getStatusCode())
                        .end(Json.encodePrettily(apiResponse.getData()));
            }, error -> {
                if (error instanceof ApiException) {
                    ApiException apiException = (ApiException) error;
                    response.setStatusCode(apiException.getStatusCode()).end(apiException.getMessage());
                } else {
                    response.setStatusCode(500).end(error.getMessage());
                }
            }).dispose();
    }


    private void timeFilterPostcodeSectors(RoutingContext routingContext) {
        logger.info("timeFilterPostcodeSectors()");
        HttpServerResponse response = routingContext.response();

        Single.defer( () -> {

            String jsonString = routingContext.getBodyAsString();
            RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors = jsonString == null ? null : Json.decodeValue(jsonString, new TypeReference<RequestTimeFilterPostcodeSectors>(){});
            logger.info("Parameter requestTimeFilterPostcodeSectors is {}", requestTimeFilterPostcodeSectors);
            return apiImpl.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors);
        })
        .subscribe(
            apiResponse -> {
                response.setStatusCode(apiResponse.getStatusCode())
                        .end(Json.encodePrettily(apiResponse.getData()));
            }, error -> {
                if (error instanceof ApiException) {
                    ApiException apiException = (ApiException) error;
                    response.setStatusCode(apiException.getStatusCode()).end(apiException.getMessage());
                } else {
                    response.setStatusCode(500).end(error.getMessage());
                }
            }).dispose();
    }


    private void timeFilterPostcodes(RoutingContext routingContext) {
        logger.info("timeFilterPostcodes()");
        HttpServerResponse response = routingContext.response();

        Single.defer( () -> {

            String jsonString = routingContext.getBodyAsString();
            RequestTimeFilterPostcodes requestTimeFilterPostcodes = jsonString == null ? null : Json.decodeValue(jsonString, new TypeReference<RequestTimeFilterPostcodes>(){});
            logger.info("Parameter requestTimeFilterPostcodes is {}", requestTimeFilterPostcodes);
            return apiImpl.timeFilterPostcodes(requestTimeFilterPostcodes);
        })
        .subscribe(
            apiResponse -> {
                response.setStatusCode(apiResponse.getStatusCode())
                        .end(Json.encodePrettily(apiResponse.getData()));
            }, error -> {
                if (error instanceof ApiException) {
                    ApiException apiException = (ApiException) error;
                    response.setStatusCode(apiException.getStatusCode()).end(apiException.getMessage());
                } else {
                    response.setStatusCode(500).end(error.getMessage());
                }
            }).dispose();
    }


    private void timeMap(RoutingContext routingContext) {
        logger.info("timeMap()");
        HttpServerResponse response = routingContext.response();

        Single.defer( () -> {

            String jsonString = routingContext.getBodyAsString();
            RequestTimeMap requestTimeMap = jsonString == null ? null : Json.decodeValue(jsonString, new TypeReference<RequestTimeMap>(){});
            logger.info("Parameter requestTimeMap is {}", requestTimeMap);
            return apiImpl.timeMap(requestTimeMap);
        })
        .subscribe(
            apiResponse -> {
                response.setStatusCode(apiResponse.getStatusCode())
                        .end(Json.encodePrettily(apiResponse.getData()));
            }, error -> {
                if (error instanceof ApiException) {
                    ApiException apiException = (ApiException) error;
                    response.setStatusCode(apiException.getStatusCode()).end(apiException.getMessage());
                } else {
                    response.setStatusCode(500).end(error.getMessage());
                }
            }).dispose();
    }

}
