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

import javax.ws.rs.*;
import javax.ws.rs.core.Response;

import io.swagger.annotations.*;

import java.io.InputStream;
import java.util.Map;
import java.util.List;
import javax.validation.constraints.*;
import javax.validation.Valid;

@Path("/v4")
@Api(description = "the v4 API")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2020-03-18T07:54:27.108Z[Etc/UTC]")
public class V4Api {

    @GET
    @Path("/geocoding/reverse")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "", response = ResponseGeocoding.class, authorizations = {
        @Authorization(value = "ApiKey"),
        @Authorization(value = "ApplicationId")
    }, tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Match a query string to geographic coordinates. [Docs link](http://docs.traveltimeplatform.com/reference/geocoding-search/)", response = ResponseGeocoding.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)", response = ResponseError.class)
    })
    public Response geocodingReverseSearch(@QueryParam("lat") @NotNull    Double lat,@QueryParam("lng") @NotNull    Double lng,@QueryParam("within.country")    String withinCountry) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/geocoding/search")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "", response = ResponseGeocoding.class, authorizations = {
        @Authorization(value = "ApiKey"),
        @Authorization(value = "ApplicationId")
    }, tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Match a query string to geographic coordinates. [Docs link](http://docs.traveltimeplatform.com/reference/geocoding-search/)", response = ResponseGeocoding.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)", response = ResponseError.class)
    })
    public Response geocodingSearch(@QueryParam("query") @NotNull    String query,@QueryParam("focus.lat")    Double focusLat,@QueryParam("focus.lng")    Double focusLng,@QueryParam("within.country")    String withinCountry) {
        return Response.ok().entity("magic!").build();
    }

    @GET
    @Path("/map-info")
    @Produces({ "application/json" })
    @ApiOperation(value = "", notes = "", response = ResponseMapInfo.class, authorizations = {
        @Authorization(value = "ApiKey"),
        @Authorization(value = "ApplicationId")
    }, tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Returns information about currently supported countries. [Docs link](http://docs.traveltimeplatform.com/reference/map-info/)", response = ResponseMapInfo.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)", response = ResponseError.class)
    })
    public Response mapInfo() {
        return Response.ok().entity("magic!").build();
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
        @ApiResponse(code = 200, message = "Returns routing information between source and destinations. [Docs link](http://docs.traveltimeplatform.com/reference/routes/)", response = ResponseRoutes.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)", response = ResponseError.class)
    })
    public Response routes(@Valid RequestRoutes requestRoutes) {
        return Response.ok().entity("magic!").build();
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
        @ApiResponse(code = 200, message = "Find out what points are supported by our api. [Docs link](http://docs.traveltimeplatform.com/reference/supported-locations/)", response = ResponseSupportedLocations.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)", response = ResponseError.class)
    })
    public Response supportedLocations(@Valid RequestSupportedLocations requestSupportedLocations) {
        return Response.ok().entity("magic!").build();
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
        @ApiResponse(code = 200, message = "Given origin and destination points filter out points that cannot be reached within specified time limit. [Docs link](http://docs.traveltimeplatform.com/reference/time-filter)", response = ResponseTimeFilter.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)", response = ResponseError.class)
    })
    public Response timeFilter(@Valid RequestTimeFilter requestTimeFilter) {
        return Response.ok().entity("magic!").build();
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
        @ApiResponse(code = 200, message = "A very fast version of Time Filter. [Docs link](http://docs.traveltimeplatform.com/reference/time-filter-fast/)", response = ResponseTimeFilterFast.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)", response = ResponseError.class)
    })
    public Response timeFilterFast(@Valid RequestTimeFilterFast requestTimeFilterFast) {
        return Response.ok().entity("magic!").build();
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
        @ApiResponse(code = 200, message = "Find districts that have a certain coverage from origin and get statistics about postcodes within such districts. [Docs link](http://docs.traveltimeplatform.com/reference/postcode-district-filter/)", response = ResponseTimeFilterPostcodeDistricts.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)", response = ResponseError.class)
    })
    public Response timeFilterPostcodeDistricts(@Valid RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts) {
        return Response.ok().entity("magic!").build();
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
        @ApiResponse(code = 200, message = "Find sectors that have a certain coverage from origin and get statistics about postcodes within such sectors. [Docs link](http://docs.traveltimeplatform.com/reference/postcode-sector-filter/)", response = ResponseTimeFilterPostcodeSectors.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)", response = ResponseError.class)
    })
    public Response timeFilterPostcodeSectors(@Valid RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors) {
        return Response.ok().entity("magic!").build();
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
        @ApiResponse(code = 200, message = "Find reachable postcodes from origin and get statistics about such postcodes. [Docs link](http://docs.traveltimeplatform.com/reference/postcode-search/)", response = ResponseTimeFilterPostcodes.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)", response = ResponseError.class)
    })
    public Response timeFilterPostcodes(@Valid RequestTimeFilterPostcodes requestTimeFilterPostcodes) {
        return Response.ok().entity("magic!").build();
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
        @ApiResponse(code = 200, message = "Given origin coordinates, find shapes of zones reachable within corresponding travel time. [Docs link](http://docs.traveltimeplatform.com/reference/time-map/)", response = ResponseTimeMap.class),
        @ApiResponse(code = 200, message = "The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)", response = ResponseError.class)
    })
    public Response timeMap(@Valid RequestTimeMap requestTimeMap) {
        return Response.ok().entity("magic!").build();
    }
}
