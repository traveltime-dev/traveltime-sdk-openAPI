package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

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
import javax.validation.constraints.*;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2019-04-02T12:37:58.515Z[Etc/UTC]")
public abstract class V4ApiService {
    public abstract Response geocodingReverseSearch( @NotNull Double focusLat, @NotNull Double focusLng, String withinCountry,SecurityContext securityContext) throws NotFoundException;
    public abstract Response geocodingSearch( @NotNull String query, String withinCountry, Double focusLat, Double focusLng,SecurityContext securityContext) throws NotFoundException;
    public abstract Response mapInfo(SecurityContext securityContext) throws NotFoundException;
    public abstract Response routes(RequestRoutes requestRoutes,SecurityContext securityContext) throws NotFoundException;
    public abstract Response supportedLocations(RequestSupportedLocations requestSupportedLocations,SecurityContext securityContext) throws NotFoundException;
    public abstract Response timeFilter(RequestTimeFilter requestTimeFilter,SecurityContext securityContext) throws NotFoundException;
    public abstract Response timeFilterFast(RequestTimeFilterFast requestTimeFilterFast,SecurityContext securityContext) throws NotFoundException;
    public abstract Response timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts,SecurityContext securityContext) throws NotFoundException;
    public abstract Response timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors,SecurityContext securityContext) throws NotFoundException;
    public abstract Response timeFilterPostcodes(RequestTimeFilterPostcodes requestTimeFilterPostcodes,SecurityContext securityContext) throws NotFoundException;
    public abstract Response timeMap(RequestTimeMap requestTimeMap,SecurityContext securityContext) throws NotFoundException;
}
