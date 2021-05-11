package org.openapitools.api;

import org.openapitools.model.*;

import io.swagger.annotations.ApiParam;
import io.swagger.jaxrs.*;

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

import java.util.List;
import java.util.Map;

import java.io.InputStream;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;
import javax.validation.constraints.*;
import javax.validation.Valid;

@Path("/v4")


@io.swagger.annotations.Api(description = "the v4 API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2021-05-11T08:38:18.755Z[Etc/UTC]")
public interface V4Api  {
   
    @GET
    @Path("/geocoding/reverse")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "", response = ResponseGeocoding.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "ApiKey"),
        @io.swagger.annotations.Authorization(value = "ApplicationId")
    }, tags={  })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Match a query string to geographic coordinates. [Docs link](http://docs.traveltime.com/reference/geocoding-search/)", response = ResponseGeocoding.class),
        
        @io.swagger.annotations.ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response geocodingReverseSearch( @NotNull  @QueryParam("lat") Double lat, @NotNull  @QueryParam("lng") Double lng,  @QueryParam("within.country") String withinCountry,@Context SecurityContext securityContext);
    @GET
    @Path("/geocoding/search")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "", response = ResponseGeocoding.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "ApiKey"),
        @io.swagger.annotations.Authorization(value = "ApplicationId")
    }, tags={  })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Match a query string to geographic coordinates. [Docs link](http://docs.traveltime.com/reference/geocoding-search/)", response = ResponseGeocoding.class),
        
        @io.swagger.annotations.ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response geocodingSearch( @NotNull  @QueryParam("query") String query,  @QueryParam("focus.lat") Double focusLat,  @QueryParam("focus.lng") Double focusLng,  @QueryParam("within.country") String withinCountry,@Context SecurityContext securityContext);
    @GET
    @Path("/map-info")
    
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "", response = ResponseMapInfo.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "ApiKey"),
        @io.swagger.annotations.Authorization(value = "ApplicationId")
    }, tags={  })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Returns information about currently supported countries. [Docs link](http://docs.traveltime.com/reference/map-info/)", response = ResponseMapInfo.class),
        
        @io.swagger.annotations.ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response mapInfo(@Context SecurityContext securityContext);
    @POST
    @Path("/routes")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "", response = ResponseRoutes.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "ApiKey"),
        @io.swagger.annotations.Authorization(value = "ApplicationId")
    }, tags={  })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Returns routing information between source and destinations. [Docs link](http://docs.traveltime.com/reference/routes/)", response = ResponseRoutes.class),
        
        @io.swagger.annotations.ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response routes(@ApiParam(value = "" ,required=true) @NotNull @Valid RequestRoutes requestRoutes,@Context SecurityContext securityContext);
    @POST
    @Path("/supported-locations")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "", response = ResponseSupportedLocations.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "ApiKey"),
        @io.swagger.annotations.Authorization(value = "ApplicationId")
    }, tags={  })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Find out what points are supported by our api. [Docs link](http://docs.traveltime.com/reference/supported-locations/)", response = ResponseSupportedLocations.class),
        
        @io.swagger.annotations.ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response supportedLocations(@ApiParam(value = "" ,required=true) @NotNull @Valid RequestSupportedLocations requestSupportedLocations,@Context SecurityContext securityContext);
    @POST
    @Path("/time-filter")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "", response = ResponseTimeFilter.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "ApiKey"),
        @io.swagger.annotations.Authorization(value = "ApplicationId")
    }, tags={  })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Given origin and destination points filter out points that cannot be reached within specified time limit. [Docs link](http://docs.traveltime.com/reference/time-filter)", response = ResponseTimeFilter.class),
        
        @io.swagger.annotations.ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response timeFilter(@ApiParam(value = "" ,required=true) @NotNull @Valid RequestTimeFilter requestTimeFilter,@Context SecurityContext securityContext);
    @POST
    @Path("/time-filter/fast")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "", response = ResponseTimeFilterFast.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "ApiKey"),
        @io.swagger.annotations.Authorization(value = "ApplicationId")
    }, tags={  })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "A very fast version of Time Filter. [Docs link](http://docs.traveltime.com/reference/time-filter-fast/)", response = ResponseTimeFilterFast.class),
        
        @io.swagger.annotations.ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response timeFilterFast(@ApiParam(value = "" ,required=true) @NotNull @Valid RequestTimeFilterFast requestTimeFilterFast,@Context SecurityContext securityContext);
    @POST
    @Path("/time-filter/postcode-districts")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "", response = ResponseTimeFilterPostcodeDistricts.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "ApiKey"),
        @io.swagger.annotations.Authorization(value = "ApplicationId")
    }, tags={  })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Find districts that have a certain coverage from origin and get statistics about postcodes within such districts. [Docs link](http://docs.traveltime.com/reference/postcode-district-filter/)", response = ResponseTimeFilterPostcodeDistricts.class),
        
        @io.swagger.annotations.ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response timeFilterPostcodeDistricts(@ApiParam(value = "" ,required=true) @NotNull @Valid RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts,@Context SecurityContext securityContext);
    @POST
    @Path("/time-filter/postcode-sectors")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "", response = ResponseTimeFilterPostcodeSectors.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "ApiKey"),
        @io.swagger.annotations.Authorization(value = "ApplicationId")
    }, tags={  })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Find sectors that have a certain coverage from origin and get statistics about postcodes within such sectors. [Docs link](http://docs.traveltime.com/reference/postcode-sector-filter/)", response = ResponseTimeFilterPostcodeSectors.class),
        
        @io.swagger.annotations.ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response timeFilterPostcodeSectors(@ApiParam(value = "" ,required=true) @NotNull @Valid RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors,@Context SecurityContext securityContext);
    @POST
    @Path("/time-filter/postcodes")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "", response = ResponseTimeFilterPostcodes.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "ApiKey"),
        @io.swagger.annotations.Authorization(value = "ApplicationId")
    }, tags={  })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Find reachable postcodes from origin and get statistics about such postcodes. [Docs link](http://docs.traveltime.com/reference/postcode-search/)", response = ResponseTimeFilterPostcodes.class),
        
        @io.swagger.annotations.ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response timeFilterPostcodes(@ApiParam(value = "" ,required=true) @NotNull @Valid RequestTimeFilterPostcodes requestTimeFilterPostcodes,@Context SecurityContext securityContext);
    @POST
    @Path("/time-map")
    @Consumes({ "application/json" })
    @Produces({ "application/json", "application/vnd.wkt+json", "application/vnd.wkt-no-holes+json", "application/vnd.bounding-boxes+json" })
    @io.swagger.annotations.ApiOperation(value = "", notes = "", response = ResponseTimeMap.class, authorizations = {
        @io.swagger.annotations.Authorization(value = "ApiKey"),
        @io.swagger.annotations.Authorization(value = "ApplicationId")
    }, tags={  })
    @io.swagger.annotations.ApiResponses(value = { 
        @io.swagger.annotations.ApiResponse(code = 200, message = "Given origin coordinates, find shapes of zones reachable within corresponding travel time. [Docs link](http://docs.traveltime.com/reference/time-map/)", response = ResponseTimeMap.class),
        
        @io.swagger.annotations.ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response)", response = ResponseError.class) })
    public Response timeMap(@ApiParam(value = "" ,required=true) @NotNull @Valid RequestTimeMap requestTimeMap,@Context SecurityContext securityContext);
}
