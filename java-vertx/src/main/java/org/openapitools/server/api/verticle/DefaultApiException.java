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
    
    public static final DefaultApiException Default_geocodingReverseSearch_200_Exception = new DefaultApiException(200, "Match a query string to geographic coordinates. [Docs link](http://docs.traveltime.com/reference/geocoding-search/)");
    public static final DefaultApiException Default_geocodingSearch_200_Exception = new DefaultApiException(200, "Match a query string to geographic coordinates. [Docs link](http://docs.traveltime.com/reference/geocoding-search/)");
    public static final DefaultApiException Default_mapInfo_200_Exception = new DefaultApiException(200, "Returns information about currently supported countries. [Docs link](http://docs.traveltime.com/reference/map-info/)");
    public static final DefaultApiException Default_routes_200_Exception = new DefaultApiException(200, "Returns routing information between source and destinations. [Docs link](http://docs.traveltime.com/reference/routes/)");
    public static final DefaultApiException Default_supportedLocations_200_Exception = new DefaultApiException(200, "Find out what points are supported by our api. [Docs link](http://docs.traveltime.com/reference/supported-locations/)");
    public static final DefaultApiException Default_timeFilter_200_Exception = new DefaultApiException(200, "Given origin and destination points filter out points that cannot be reached within specified time limit. [Docs link](http://docs.traveltime.com/reference/time-filter)");
    public static final DefaultApiException Default_timeFilterFast_200_Exception = new DefaultApiException(200, "A very fast version of Time Filter. [Docs link](http://docs.traveltime.com/reference/time-filter-fast/)");
    public static final DefaultApiException Default_timeFilterPostcodeDistricts_200_Exception = new DefaultApiException(200, "Find districts that have a certain coverage from origin and get statistics about postcodes within such districts. [Docs link](http://docs.traveltime.com/reference/postcode-district-filter/)");
    public static final DefaultApiException Default_timeFilterPostcodeSectors_200_Exception = new DefaultApiException(200, "Find sectors that have a certain coverage from origin and get statistics about postcodes within such sectors. [Docs link](http://docs.traveltime.com/reference/postcode-sector-filter/)");
    public static final DefaultApiException Default_timeFilterPostcodes_200_Exception = new DefaultApiException(200, "Find reachable postcodes from origin and get statistics about such postcodes. [Docs link](http://docs.traveltime.com/reference/postcode-search/)");
    public static final DefaultApiException Default_timeMap_200_Exception = new DefaultApiException(200, "Given origin coordinates, find shapes of zones reachable within corresponding travel time. [Docs link](http://docs.traveltime.com/reference/time-map/)");
    

}