package com.prokarma.pkmst.controller;

import com.prokarma.pkmst.model.RequestRoutes;
import com.prokarma.pkmst.model.RequestSupportedLocations;
import com.prokarma.pkmst.model.RequestTimeFilter;
import com.prokarma.pkmst.model.RequestTimeFilterFast;
import com.prokarma.pkmst.model.RequestTimeFilterPostcodeDistricts;
import com.prokarma.pkmst.model.RequestTimeFilterPostcodeSectors;
import com.prokarma.pkmst.model.RequestTimeFilterPostcodes;
import com.prokarma.pkmst.model.RequestTimeMap;
import com.prokarma.pkmst.model.ResponseError;
import com.prokarma.pkmst.model.ResponseGeocoding;
import com.prokarma.pkmst.model.ResponseMapInfo;
import com.prokarma.pkmst.model.ResponseRoutes;
import com.prokarma.pkmst.model.ResponseSupportedLocations;
import com.prokarma.pkmst.model.ResponseTimeFilter;
import com.prokarma.pkmst.model.ResponseTimeFilterFast;
import com.prokarma.pkmst.model.ResponseTimeFilterPostcodeDistricts;
import com.prokarma.pkmst.model.ResponseTimeFilterPostcodeSectors;
import com.prokarma.pkmst.model.ResponseTimeFilterPostcodes;
import com.prokarma.pkmst.model.ResponseTimeMap;

import io.swagger.annotations.*;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
/**
 * Api implemention
 * @author pkmst
 *
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2020-03-18T07:53:55.564Z[Etc/UTC]")

@Controller
public class DefaultApiController implements DefaultApi {
    private final ObjectMapper objectMapper;
@Autowired
    public DefaultApiController(ObjectMapper objectMapper) {
        this.objectMapper = objectMapper;
    }

    public ResponseEntity<ResponseGeocoding> geocodingReverseSearch(@ApiParam(value = "", required = true)  @RequestParam(value = "lat", required = true) Double lat,
        @ApiParam(value = "", required = true)  @RequestParam(value = "lng", required = true) Double lng,
        @ApiParam(value = "")  @RequestParam(value = "within.country", required = false) String withinCountry,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<ResponseGeocoding>(objectMapper.readValue("", ResponseGeocoding.class), HttpStatus.OK);
        }

        return new ResponseEntity<ResponseGeocoding>(HttpStatus.OK);
    }

    public ResponseEntity<ResponseGeocoding> geocodingSearch(@ApiParam(value = "", required = true)  @RequestParam(value = "query", required = true) String query,
        @ApiParam(value = "")  @RequestParam(value = "focus.lat", required = false) Double focusLat,
        @ApiParam(value = "")  @RequestParam(value = "focus.lng", required = false) Double focusLng,
        @ApiParam(value = "")  @RequestParam(value = "within.country", required = false) String withinCountry,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<ResponseGeocoding>(objectMapper.readValue("", ResponseGeocoding.class), HttpStatus.OK);
        }

        return new ResponseEntity<ResponseGeocoding>(HttpStatus.OK);
    }

    public ResponseEntity<ResponseMapInfo> mapInfo(@RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<ResponseMapInfo>(objectMapper.readValue("", ResponseMapInfo.class), HttpStatus.OK);
        }

        return new ResponseEntity<ResponseMapInfo>(HttpStatus.OK);
    }

    public ResponseEntity<ResponseRoutes> routes(@ApiParam(value = "" ,required=true )   @RequestBody RequestRoutes requestRoutes,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<ResponseRoutes>(objectMapper.readValue("", ResponseRoutes.class), HttpStatus.OK);
        }

        return new ResponseEntity<ResponseRoutes>(HttpStatus.OK);
    }

    public ResponseEntity<ResponseSupportedLocations> supportedLocations(@ApiParam(value = "" ,required=true )   @RequestBody RequestSupportedLocations requestSupportedLocations,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<ResponseSupportedLocations>(objectMapper.readValue("", ResponseSupportedLocations.class), HttpStatus.OK);
        }

        return new ResponseEntity<ResponseSupportedLocations>(HttpStatus.OK);
    }

    public ResponseEntity<ResponseTimeFilter> timeFilter(@ApiParam(value = "" ,required=true )   @RequestBody RequestTimeFilter requestTimeFilter,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<ResponseTimeFilter>(objectMapper.readValue("", ResponseTimeFilter.class), HttpStatus.OK);
        }

        return new ResponseEntity<ResponseTimeFilter>(HttpStatus.OK);
    }

    public ResponseEntity<ResponseTimeFilterFast> timeFilterFast(@ApiParam(value = "" ,required=true )   @RequestBody RequestTimeFilterFast requestTimeFilterFast,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<ResponseTimeFilterFast>(objectMapper.readValue("", ResponseTimeFilterFast.class), HttpStatus.OK);
        }

        return new ResponseEntity<ResponseTimeFilterFast>(HttpStatus.OK);
    }

    public ResponseEntity<ResponseTimeFilterPostcodeDistricts> timeFilterPostcodeDistricts(@ApiParam(value = "" ,required=true )   @RequestBody RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<ResponseTimeFilterPostcodeDistricts>(objectMapper.readValue("", ResponseTimeFilterPostcodeDistricts.class), HttpStatus.OK);
        }

        return new ResponseEntity<ResponseTimeFilterPostcodeDistricts>(HttpStatus.OK);
    }

    public ResponseEntity<ResponseTimeFilterPostcodeSectors> timeFilterPostcodeSectors(@ApiParam(value = "" ,required=true )   @RequestBody RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<ResponseTimeFilterPostcodeSectors>(objectMapper.readValue("", ResponseTimeFilterPostcodeSectors.class), HttpStatus.OK);
        }

        return new ResponseEntity<ResponseTimeFilterPostcodeSectors>(HttpStatus.OK);
    }

    public ResponseEntity<ResponseTimeFilterPostcodes> timeFilterPostcodes(@ApiParam(value = "" ,required=true )   @RequestBody RequestTimeFilterPostcodes requestTimeFilterPostcodes,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<ResponseTimeFilterPostcodes>(objectMapper.readValue("", ResponseTimeFilterPostcodes.class), HttpStatus.OK);
        }

        return new ResponseEntity<ResponseTimeFilterPostcodes>(HttpStatus.OK);
    }

    public ResponseEntity<ResponseTimeMap> timeMap(@ApiParam(value = "" ,required=true )   @RequestBody RequestTimeMap requestTimeMap,
        @RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<ResponseTimeMap>(objectMapper.readValue("", ResponseTimeMap.class), HttpStatus.OK);
        }

        return new ResponseEntity<ResponseTimeMap>(HttpStatus.OK);
    }

}
