package org.openapitools.api;

import org.openapitools.api.*;
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

import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2019-05-24T09:07:07.467Z[Etc/UTC]")
public interface V4ApiService {
      Response geocodingReverseSearch(Double focusLat,Double focusLng,String withinCountry,SecurityContext securityContext)
      throws NotFoundException;
      Response geocodingSearch(String query,String withinCountry,Double focusLat,Double focusLng,SecurityContext securityContext)
      throws NotFoundException;
      Response mapInfo(SecurityContext securityContext)
      throws NotFoundException;
      Response routes(RequestRoutes requestRoutes,SecurityContext securityContext)
      throws NotFoundException;
      Response supportedLocations(RequestSupportedLocations requestSupportedLocations,SecurityContext securityContext)
      throws NotFoundException;
      Response timeFilter(RequestTimeFilter requestTimeFilter,SecurityContext securityContext)
      throws NotFoundException;
      Response timeFilterFast(RequestTimeFilterFast requestTimeFilterFast,SecurityContext securityContext)
      throws NotFoundException;
      Response timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts,SecurityContext securityContext)
      throws NotFoundException;
      Response timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors,SecurityContext securityContext)
      throws NotFoundException;
      Response timeFilterPostcodes(RequestTimeFilterPostcodes requestTimeFilterPostcodes,SecurityContext securityContext)
      throws NotFoundException;
      Response timeMap(RequestTimeMap requestTimeMap,SecurityContext securityContext)
      throws NotFoundException;
}
