package org.openapitools.api;

import org.openapitools.model.RequestRoutes;
import org.openapitools.model.RequestSupportedLocations;
import org.openapitools.model.RequestTimeFilter;
import org.openapitools.model.RequestTimeFilterFast;
import org.openapitools.model.RequestTimeFilterPostcodeDistricts;
import org.openapitools.model.RequestTimeFilterPostcodeSectors;
import org.openapitools.model.RequestTimeFilterPostcodes;
import org.openapitools.model.RequestTimeMap;
import org.openapitools.model.ResponseError;
import org.openapitools.model.ResponseGeocoding;
import org.openapitools.model.ResponseMapInfo;
import org.openapitools.model.ResponseRoutes;
import org.openapitools.model.ResponseSupportedLocations;
import org.openapitools.model.ResponseTimeFilter;
import org.openapitools.model.ResponseTimeFilterFast;
import org.openapitools.model.ResponseTimeFilterPostcodeDistricts;
import org.openapitools.model.ResponseTimeFilterPostcodeSectors;
import org.openapitools.model.ResponseTimeFilterPostcodes;
import org.openapitools.model.ResponseTimeMap;
import org.openapitools.api.V4ApiService;

import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;

import io.swagger.annotations.*;
import java.io.InputStream;

import org.apache.cxf.jaxrs.ext.PATCH;
import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;

import java.util.Map;
import java.util.List;
import javax.validation.constraints.*;
@Path("/v4")
@RequestScoped

@Api(description = "the v4 API")


@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2020-07-14T11:27:30.343Z[Etc/UTC]")

public class V4Api  {

  @Context SecurityContext securityContext;

  @Inject V4ApiService delegate;


    @GET
    @Path("/geocoding/reverse")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "", response = ResponseGeocoding.class, authorizations = {
        @Authorization(value = "ApiKey"),
        @Authorization(value = "ApplicationId")
    }, tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Match a query string to geographic coordinates. [Docs link](http://docs.traveltime.com/reference/geocoding-search/)", response = ResponseGeocoding.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response geocodingReverseSearch( @NotNull @ApiParam(value = "",required=true)  @QueryParam("lat") Double lat,  @NotNull @ApiParam(value = "",required=true)  @QueryParam("lng") Double lng, @ApiParam(value = "")  @QueryParam("within.country") String withinCountry) {
        return delegate.geocodingReverseSearch(lat, lng, withinCountry, securityContext);
    }

    @GET
    @Path("/geocoding/search")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "", response = ResponseGeocoding.class, authorizations = {
        @Authorization(value = "ApiKey"),
        @Authorization(value = "ApplicationId")
    }, tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Match a query string to geographic coordinates. [Docs link](http://docs.traveltime.com/reference/geocoding-search/)", response = ResponseGeocoding.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response geocodingSearch( @NotNull @ApiParam(value = "",required=true)  @QueryParam("query") String query, @ApiParam(value = "")  @QueryParam("focus.lat") Double focusLat, @ApiParam(value = "")  @QueryParam("focus.lng") Double focusLng, @ApiParam(value = "")  @QueryParam("within.country") String withinCountry) {
        return delegate.geocodingSearch(query, focusLat, focusLng, withinCountry, securityContext);
    }

    @GET
    @Path("/map-info")
    
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "", response = ResponseMapInfo.class, authorizations = {
        @Authorization(value = "ApiKey"),
        @Authorization(value = "ApplicationId")
    }, tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Returns information about currently supported countries. [Docs link](http://docs.traveltime.com/reference/map-info/)", response = ResponseMapInfo.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response mapInfo() {
        return delegate.mapInfo(securityContext);
    }

    @POST
    @Path("/routes")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "", response = ResponseRoutes.class, authorizations = {
        @Authorization(value = "ApiKey"),
        @Authorization(value = "ApplicationId")
    }, tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Returns routing information between source and destinations. [Docs link](http://docs.traveltime.com/reference/routes/)", response = ResponseRoutes.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response routes(@ApiParam(value = "" ,required=true) RequestRoutes requestRoutes) {
        return delegate.routes(requestRoutes, securityContext);
    }

    @POST
    @Path("/supported-locations")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "", response = ResponseSupportedLocations.class, authorizations = {
        @Authorization(value = "ApiKey"),
        @Authorization(value = "ApplicationId")
    }, tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Find out what points are supported by our api. [Docs link](http://docs.traveltime.com/reference/supported-locations/)", response = ResponseSupportedLocations.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response supportedLocations(@ApiParam(value = "" ,required=true) RequestSupportedLocations requestSupportedLocations) {
        return delegate.supportedLocations(requestSupportedLocations, securityContext);
    }

    @POST
    @Path("/time-filter")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "", response = ResponseTimeFilter.class, authorizations = {
        @Authorization(value = "ApiKey"),
        @Authorization(value = "ApplicationId")
    }, tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Given origin and destination points filter out points that cannot be reached within specified time limit. [Docs link](http://docs.traveltime.com/reference/time-filter)", response = ResponseTimeFilter.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response timeFilter(@ApiParam(value = "" ,required=true) RequestTimeFilter requestTimeFilter) {
        return delegate.timeFilter(requestTimeFilter, securityContext);
    }

    @POST
    @Path("/time-filter/fast")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "", response = ResponseTimeFilterFast.class, authorizations = {
        @Authorization(value = "ApiKey"),
        @Authorization(value = "ApplicationId")
    }, tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "A very fast version of Time Filter. [Docs link](http://docs.traveltime.com/reference/time-filter-fast/)", response = ResponseTimeFilterFast.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response timeFilterFast(@ApiParam(value = "" ,required=true) RequestTimeFilterFast requestTimeFilterFast) {
        return delegate.timeFilterFast(requestTimeFilterFast, securityContext);
    }

    @POST
    @Path("/time-filter/postcode-districts")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "", response = ResponseTimeFilterPostcodeDistricts.class, authorizations = {
        @Authorization(value = "ApiKey"),
        @Authorization(value = "ApplicationId")
    }, tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Find districts that have a certain coverage from origin and get statistics about postcodes within such districts. [Docs link](http://docs.traveltime.com/reference/postcode-district-filter/)", response = ResponseTimeFilterPostcodeDistricts.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response timeFilterPostcodeDistricts(@ApiParam(value = "" ,required=true) RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts) {
        return delegate.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts, securityContext);
    }

    @POST
    @Path("/time-filter/postcode-sectors")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "", response = ResponseTimeFilterPostcodeSectors.class, authorizations = {
        @Authorization(value = "ApiKey"),
        @Authorization(value = "ApplicationId")
    }, tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Find sectors that have a certain coverage from origin and get statistics about postcodes within such sectors. [Docs link](http://docs.traveltime.com/reference/postcode-sector-filter/)", response = ResponseTimeFilterPostcodeSectors.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response timeFilterPostcodeSectors(@ApiParam(value = "" ,required=true) RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors) {
        return delegate.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors, securityContext);
    }

    @POST
    @Path("/time-filter/postcodes")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "", response = ResponseTimeFilterPostcodes.class, authorizations = {
        @Authorization(value = "ApiKey"),
        @Authorization(value = "ApplicationId")
    }, tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Find reachable postcodes from origin and get statistics about such postcodes. [Docs link](http://docs.traveltime.com/reference/postcode-search/)", response = ResponseTimeFilterPostcodes.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response timeFilterPostcodes(@ApiParam(value = "" ,required=true) RequestTimeFilterPostcodes requestTimeFilterPostcodes) {
        return delegate.timeFilterPostcodes(requestTimeFilterPostcodes, securityContext);
    }

    @POST
    @Path("/time-map")
    @Consumes({ "application/json" })
    @Produces({ "application/json", "application/vnd.wkt+json", "application/vnd.wkt-no-holes+json", "application/vnd.bounding-boxes+json" })
    @ApiOperation(value = "", notes = "", response = ResponseTimeMap.class, authorizations = {
        @Authorization(value = "ApiKey"),
        @Authorization(value = "ApplicationId")
    }, tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Given origin coordinates, find shapes of zones reachable within corresponding travel time. [Docs link](http://docs.traveltime.com/reference/time-map/)", response = ResponseTimeMap.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response timeMap(@ApiParam(value = "" ,required=true) RequestTimeMap requestTimeMap) {
        return delegate.timeMap(requestTimeMap, securityContext);
    }
}
