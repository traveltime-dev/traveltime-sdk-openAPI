package org.openapitools.controllers;

import io.swagger.inflector.models.RequestContext;
import io.swagger.inflector.models.ResponseContext;
import javax.ws.rs.core.Response.Status;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import java.io.File;
import java.util.List;

import org.openapitools.model.*;

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

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2021-05-26T18:49:59.858Z[Etc/UTC]")
public class V4Controller  {
  /** 
   * Uncomment and implement as you see fit.  These operations will map
   * Directly to operation calls from the routing logic.  Because the inflector
   * Code allows you to implement logic incrementally, they are disabled.
   **/

  /*
    public ResponseContext geocodingReverseSearch(RequestContext request , Double lat, Double lng, String withinCountry) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext geocodingSearch(RequestContext request , String query, Double focusLat, Double focusLng, String withinCountry) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext mapInfo(RequestContext request ) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext routes(RequestContext request , RequestRoutes requestRoutes) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext supportedLocations(RequestContext request , RequestSupportedLocations requestSupportedLocations) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext timeFilter(RequestContext request , RequestTimeFilter requestTimeFilter) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext timeFilterFast(RequestContext request , RequestTimeFilterFast requestTimeFilterFast) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext timeFilterPostcodeDistricts(RequestContext request , RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext timeFilterPostcodeSectors(RequestContext request , RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext timeFilterPostcodes(RequestContext request , RequestTimeFilterPostcodes requestTimeFilterPostcodes) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

  /*
    public ResponseContext timeMap(RequestContext request , RequestTimeMap requestTimeMap) {
        return new ResponseContext().status(Status.INTERNAL_SERVER_ERROR).entity( "Not implemented" );
    }
  */

}

