package org.openapitools.api

import org.openapitools.model.RequestRoutes
import org.openapitools.model.RequestSupportedLocations
import org.openapitools.model.RequestTimeFilter
import org.openapitools.model.RequestTimeFilterFast
import org.openapitools.model.RequestTimeFilterPostcodeDistricts
import org.openapitools.model.RequestTimeFilterPostcodeSectors
import org.openapitools.model.RequestTimeFilterPostcodes
import org.openapitools.model.RequestTimeMap
import org.openapitools.model.ResponseError
import org.openapitools.model.ResponseGeocoding
import org.openapitools.model.ResponseMapInfo
import org.openapitools.model.ResponseRoutes
import org.openapitools.model.ResponseSupportedLocations
import org.openapitools.model.ResponseTimeFilter
import org.openapitools.model.ResponseTimeFilterFast
import org.openapitools.model.ResponseTimeFilterPostcodeDistricts
import org.openapitools.model.ResponseTimeFilterPostcodeSectors
import org.openapitools.model.ResponseTimeFilterPostcodes
import org.openapitools.model.ResponseTimeMap
import org.springframework.http.HttpStatus
import org.springframework.http.MediaType
import org.springframework.http.ResponseEntity

import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestPart
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestHeader
import org.springframework.web.bind.annotation.RequestMethod
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import org.springframework.validation.annotation.Validated
import org.springframework.web.context.request.NativeWebRequest
import org.springframework.beans.factory.annotation.Autowired

import javax.validation.Valid
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

import kotlin.collections.List
import kotlin.collections.Map

@RestController
@Validated
@RequestMapping("\${api.base-path:}")
class V4ApiController() {


    @RequestMapping(
        value = ["/v4/geocoding/reverse"],
        produces = ["application/json"], 
        method = [RequestMethod.GET])
    fun geocodingReverseSearch(@NotNull  @RequestParam(value = "lat", required = true) lat: kotlin.Double
,@NotNull  @RequestParam(value = "lng", required = true) lng: kotlin.Double
, @RequestParam(value = "within.country", required = false) withinPeriodCountry: kotlin.String?
): ResponseEntity<ResponseGeocoding> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        value = ["/v4/geocoding/search"],
        produces = ["application/json"], 
        method = [RequestMethod.GET])
    fun geocodingSearch(@NotNull  @RequestParam(value = "query", required = true) query: kotlin.String
, @RequestParam(value = "focus.lat", required = false) focusPeriodLat: kotlin.Double?
, @RequestParam(value = "focus.lng", required = false) focusPeriodLng: kotlin.Double?
, @RequestParam(value = "within.country", required = false) withinPeriodCountry: kotlin.String?
): ResponseEntity<ResponseGeocoding> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        value = ["/v4/map-info"],
        produces = ["application/json"], 
        method = [RequestMethod.GET])
    fun mapInfo(): ResponseEntity<ResponseMapInfo> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        value = ["/v4/routes"],
        produces = ["application/json"], 
        consumes = ["application/json"],
        method = [RequestMethod.POST])
    fun routes( @Valid @RequestBody requestRoutes: RequestRoutes
): ResponseEntity<ResponseRoutes> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        value = ["/v4/supported-locations"],
        produces = ["application/json"], 
        consumes = ["application/json"],
        method = [RequestMethod.POST])
    fun supportedLocations( @Valid @RequestBody requestSupportedLocations: RequestSupportedLocations
): ResponseEntity<ResponseSupportedLocations> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        value = ["/v4/time-filter"],
        produces = ["application/json"], 
        consumes = ["application/json"],
        method = [RequestMethod.POST])
    fun timeFilter( @Valid @RequestBody requestTimeFilter: RequestTimeFilter
): ResponseEntity<ResponseTimeFilter> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        value = ["/v4/time-filter/fast"],
        produces = ["application/json"], 
        consumes = ["application/json"],
        method = [RequestMethod.POST])
    fun timeFilterFast( @Valid @RequestBody requestTimeFilterFast: RequestTimeFilterFast
): ResponseEntity<ResponseTimeFilterFast> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        value = ["/v4/time-filter/postcode-districts"],
        produces = ["application/json"], 
        consumes = ["application/json"],
        method = [RequestMethod.POST])
    fun timeFilterPostcodeDistricts( @Valid @RequestBody requestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts
): ResponseEntity<ResponseTimeFilterPostcodeDistricts> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        value = ["/v4/time-filter/postcode-sectors"],
        produces = ["application/json"], 
        consumes = ["application/json"],
        method = [RequestMethod.POST])
    fun timeFilterPostcodeSectors( @Valid @RequestBody requestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors
): ResponseEntity<ResponseTimeFilterPostcodeSectors> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        value = ["/v4/time-filter/postcodes"],
        produces = ["application/json"], 
        consumes = ["application/json"],
        method = [RequestMethod.POST])
    fun timeFilterPostcodes( @Valid @RequestBody requestTimeFilterPostcodes: RequestTimeFilterPostcodes
): ResponseEntity<ResponseTimeFilterPostcodes> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
        value = ["/v4/time-map"],
        produces = ["application/json", "application/vnd.wkt+json", "application/vnd.wkt-no-holes+json", "application/vnd.bounding-boxes+json"], 
        consumes = ["application/json"],
        method = [RequestMethod.POST])
    fun timeMap( @Valid @RequestBody requestTimeMap: RequestTimeMap
): ResponseEntity<ResponseTimeMap> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }
}
