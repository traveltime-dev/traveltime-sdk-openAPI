package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;

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

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2019-05-24T09:07:00.658Z[Etc/UTC]")
public interface V4ApiService {
      public Response geocodingReverseSearch(Double focusLat, Double focusLng, String withinCountry, SecurityContext securityContext);
      public Response geocodingSearch(String query, String withinCountry, Double focusLat, Double focusLng, SecurityContext securityContext);
      public Response mapInfo(SecurityContext securityContext);
      public Response routes(RequestRoutes requestRoutes, SecurityContext securityContext);
      public Response supportedLocations(RequestSupportedLocations requestSupportedLocations, SecurityContext securityContext);
      public Response timeFilter(RequestTimeFilter requestTimeFilter, SecurityContext securityContext);
      public Response timeFilterFast(RequestTimeFilterFast requestTimeFilterFast, SecurityContext securityContext);
      public Response timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts, SecurityContext securityContext);
      public Response timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors, SecurityContext securityContext);
      public Response timeFilterPostcodes(RequestTimeFilterPostcodes requestTimeFilterPostcodes, SecurityContext securityContext);
      public Response timeMap(RequestTimeMap requestTimeMap, SecurityContext securityContext);
}
