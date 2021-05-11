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

import com.fasterxml.jackson.core.type.TypeReference;
import io.vertx.core.json.jackson.DatabindCodec;
import io.vertx.ext.web.openapi.RouterBuilder;
import io.vertx.ext.web.validation.RequestParameters;
import io.vertx.ext.web.validation.RequestParameter;
import io.vertx.ext.web.validation.ValidationHandler;
import io.vertx.ext.web.RoutingContext;
import io.vertx.core.json.JsonObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;
import java.util.Map;

public class DefaultApiHandler {

    private static final Logger logger = LoggerFactory.getLogger(DefaultApiHandler.class);

    private final DefaultApi api;

    public DefaultApiHandler(DefaultApi api) {
        this.api = api;
    }

    @Deprecated
    public DefaultApiHandler() {
        this(new DefaultApiImpl());
    }

    public void mount(RouterBuilder builder) {
        builder.operation("geocodingReverseSearch").handler(this::geocodingReverseSearch);
        builder.operation("geocodingSearch").handler(this::geocodingSearch);
        builder.operation("mapInfo").handler(this::mapInfo);
        builder.operation("routes").handler(this::routes);
        builder.operation("supportedLocations").handler(this::supportedLocations);
        builder.operation("timeFilter").handler(this::timeFilter);
        builder.operation("timeFilterFast").handler(this::timeFilterFast);
        builder.operation("timeFilterPostcodeDistricts").handler(this::timeFilterPostcodeDistricts);
        builder.operation("timeFilterPostcodeSectors").handler(this::timeFilterPostcodeSectors);
        builder.operation("timeFilterPostcodes").handler(this::timeFilterPostcodes);
        builder.operation("timeMap").handler(this::timeMap);
    }

    private void geocodingReverseSearch(RoutingContext routingContext) {
        logger.info("geocodingReverseSearch()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        Double lat = requestParameters.queryParameter("lat") != null ? requestParameters.queryParameter("lat").getDouble() : null;
        Double lng = requestParameters.queryParameter("lng") != null ? requestParameters.queryParameter("lng").getDouble() : null;
        String withinCountry = requestParameters.queryParameter("within.country") != null ? requestParameters.queryParameter("within.country").getString() : null;

        logger.debug("Parameter lat is {}", lat);
        logger.debug("Parameter lng is {}", lng);
        logger.debug("Parameter withinCountry is {}", withinCountry);

        api.geocodingReverseSearch(lat, lng, withinCountry)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void geocodingSearch(RoutingContext routingContext) {
        logger.info("geocodingSearch()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        String query = requestParameters.queryParameter("query") != null ? requestParameters.queryParameter("query").getString() : null;
        Double focusLat = requestParameters.queryParameter("focus.lat") != null ? requestParameters.queryParameter("focus.lat").getDouble() : null;
        Double focusLng = requestParameters.queryParameter("focus.lng") != null ? requestParameters.queryParameter("focus.lng").getDouble() : null;
        String withinCountry = requestParameters.queryParameter("within.country") != null ? requestParameters.queryParameter("within.country").getString() : null;

        logger.debug("Parameter query is {}", query);
        logger.debug("Parameter focusLat is {}", focusLat);
        logger.debug("Parameter focusLng is {}", focusLng);
        logger.debug("Parameter withinCountry is {}", withinCountry);

        api.geocodingSearch(query, focusLat, focusLng, withinCountry)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void mapInfo(RoutingContext routingContext) {
        logger.info("mapInfo()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);



        api.mapInfo()
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void routes(RoutingContext routingContext) {
        logger.info("routes()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        RequestParameter body = requestParameters.body();
        RequestRoutes requestRoutes = body != null ? DatabindCodec.mapper().convertValue(body.get(), new TypeReference<RequestRoutes>(){}) : null;

        logger.debug("Parameter requestRoutes is {}", requestRoutes);

        api.routes(requestRoutes)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void supportedLocations(RoutingContext routingContext) {
        logger.info("supportedLocations()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        RequestParameter body = requestParameters.body();
        RequestSupportedLocations requestSupportedLocations = body != null ? DatabindCodec.mapper().convertValue(body.get(), new TypeReference<RequestSupportedLocations>(){}) : null;

        logger.debug("Parameter requestSupportedLocations is {}", requestSupportedLocations);

        api.supportedLocations(requestSupportedLocations)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void timeFilter(RoutingContext routingContext) {
        logger.info("timeFilter()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        RequestParameter body = requestParameters.body();
        RequestTimeFilter requestTimeFilter = body != null ? DatabindCodec.mapper().convertValue(body.get(), new TypeReference<RequestTimeFilter>(){}) : null;

        logger.debug("Parameter requestTimeFilter is {}", requestTimeFilter);

        api.timeFilter(requestTimeFilter)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void timeFilterFast(RoutingContext routingContext) {
        logger.info("timeFilterFast()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        RequestParameter body = requestParameters.body();
        RequestTimeFilterFast requestTimeFilterFast = body != null ? DatabindCodec.mapper().convertValue(body.get(), new TypeReference<RequestTimeFilterFast>(){}) : null;

        logger.debug("Parameter requestTimeFilterFast is {}", requestTimeFilterFast);

        api.timeFilterFast(requestTimeFilterFast)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void timeFilterPostcodeDistricts(RoutingContext routingContext) {
        logger.info("timeFilterPostcodeDistricts()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        RequestParameter body = requestParameters.body();
        RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts = body != null ? DatabindCodec.mapper().convertValue(body.get(), new TypeReference<RequestTimeFilterPostcodeDistricts>(){}) : null;

        logger.debug("Parameter requestTimeFilterPostcodeDistricts is {}", requestTimeFilterPostcodeDistricts);

        api.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void timeFilterPostcodeSectors(RoutingContext routingContext) {
        logger.info("timeFilterPostcodeSectors()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        RequestParameter body = requestParameters.body();
        RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors = body != null ? DatabindCodec.mapper().convertValue(body.get(), new TypeReference<RequestTimeFilterPostcodeSectors>(){}) : null;

        logger.debug("Parameter requestTimeFilterPostcodeSectors is {}", requestTimeFilterPostcodeSectors);

        api.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void timeFilterPostcodes(RoutingContext routingContext) {
        logger.info("timeFilterPostcodes()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        RequestParameter body = requestParameters.body();
        RequestTimeFilterPostcodes requestTimeFilterPostcodes = body != null ? DatabindCodec.mapper().convertValue(body.get(), new TypeReference<RequestTimeFilterPostcodes>(){}) : null;

        logger.debug("Parameter requestTimeFilterPostcodes is {}", requestTimeFilterPostcodes);

        api.timeFilterPostcodes(requestTimeFilterPostcodes)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

    private void timeMap(RoutingContext routingContext) {
        logger.info("timeMap()");

        // Param extraction
        RequestParameters requestParameters = routingContext.get(ValidationHandler.REQUEST_CONTEXT_KEY);

        RequestParameter body = requestParameters.body();
        RequestTimeMap requestTimeMap = body != null ? DatabindCodec.mapper().convertValue(body.get(), new TypeReference<RequestTimeMap>(){}) : null;

        logger.debug("Parameter requestTimeMap is {}", requestTimeMap);

        api.timeMap(requestTimeMap)
            .onSuccess(apiResponse -> {
                routingContext.response().setStatusCode(apiResponse.getStatusCode());
                if (apiResponse.hasData()) {
                    routingContext.json(apiResponse.getData());
                } else {
                    routingContext.response().end();
                }
            })
            .onFailure(routingContext::fail);
    }

}
