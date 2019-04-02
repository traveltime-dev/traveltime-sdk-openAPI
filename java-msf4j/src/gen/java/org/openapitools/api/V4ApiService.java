package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;

import org.wso2.msf4j.formparam.FormDataParam;
import org.wso2.msf4j.formparam.FileInfo;

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

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2019-04-02T12:37:41.410Z[Etc/UTC]")
public abstract class V4ApiService {
    public abstract Response geocodingReverseSearch(Double focusLat
 ,Double focusLng
 ,String withinCountry
 ) throws NotFoundException;
    public abstract Response geocodingSearch(String query
 ,String withinCountry
 ,Double focusLat
 ,Double focusLng
 ) throws NotFoundException;
    public abstract Response mapInfo() throws NotFoundException;
    public abstract Response routes(RequestRoutes requestRoutes
 ) throws NotFoundException;
    public abstract Response supportedLocations(RequestSupportedLocations requestSupportedLocations
 ) throws NotFoundException;
    public abstract Response timeFilter(RequestTimeFilter requestTimeFilter
 ) throws NotFoundException;
    public abstract Response timeFilterFast(RequestTimeFilterFast requestTimeFilterFast
 ) throws NotFoundException;
    public abstract Response timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts
 ) throws NotFoundException;
    public abstract Response timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors
 ) throws NotFoundException;
    public abstract Response timeFilterPostcodes(RequestTimeFilterPostcodes requestTimeFilterPostcodes
 ) throws NotFoundException;
    public abstract Response timeMap(RequestTimeMap requestTimeMap
 ) throws NotFoundException;
}
