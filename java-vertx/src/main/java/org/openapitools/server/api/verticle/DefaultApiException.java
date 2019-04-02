package org.openapitools.server.api.verticle;

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

public final class DefaultApiException extends MainApiException {
    public DefaultApiException(int statusCode, String statusMessage) {
        super(statusCode, statusMessage);
    }
    
    public static final DefaultApiException Default_geocodingReverseSearch_0_Exception = new DefaultApiException(0, "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    public static final DefaultApiException Default_geocodingSearch_0_Exception = new DefaultApiException(0, "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    public static final DefaultApiException Default_mapInfo_0_Exception = new DefaultApiException(0, "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    public static final DefaultApiException Default_routes_0_Exception = new DefaultApiException(0, "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    public static final DefaultApiException Default_supportedLocations_0_Exception = new DefaultApiException(0, "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    public static final DefaultApiException Default_timeFilter_0_Exception = new DefaultApiException(0, "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    public static final DefaultApiException Default_timeFilterFast_0_Exception = new DefaultApiException(0, "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    public static final DefaultApiException Default_timeFilterPostcodeDistricts_0_Exception = new DefaultApiException(0, "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    public static final DefaultApiException Default_timeFilterPostcodeSectors_0_Exception = new DefaultApiException(0, "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    public static final DefaultApiException Default_timeFilterPostcodes_0_Exception = new DefaultApiException(0, "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    public static final DefaultApiException Default_timeMap_0_Exception = new DefaultApiException(0, "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)");
    

}