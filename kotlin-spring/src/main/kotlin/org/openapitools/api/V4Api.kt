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

import org.springframework.web.bind.annotation.*
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


    @GetMapping(
        value = ["/v4/geocoding/reverse"],
        produces = ["application/json"]
    )
    fun geocodingReverseSearch(@NotNull  @RequestParam(value = "lat", required = true) lat: kotlin.Double
,@NotNull  @RequestParam(value = "lng", required = true) lng: kotlin.Double
, @RequestParam(value = "within.country", required = false) withinCountry: kotlin.String?
): ResponseEntity<ResponseGeocoding> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @GetMapping(
        value = ["/v4/geocoding/search"],
        produces = ["application/json"]
    )
    fun geocodingSearch(@NotNull  @RequestParam(value = "query", required = true) query: kotlin.String
, @RequestParam(value = "focus.lat", required = false) focusLat: kotlin.Double?
, @RequestParam(value = "focus.lng", required = false) focusLng: kotlin.Double?
, @RequestParam(value = "within.country", required = false) withinCountry: kotlin.String?
): ResponseEntity<ResponseGeocoding> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @GetMapping(
        value = ["/v4/map-info"],
        produces = ["application/json"]
    )
    fun mapInfo(): ResponseEntity<ResponseMapInfo> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @PostMapping(
        value = ["/v4/routes"],
        produces = ["application/json"],
        consumes = ["application/json"]
    )
    fun routes( @Valid @RequestBody requestRoutes: RequestRoutes
): ResponseEntity<ResponseRoutes> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @PostMapping(
        value = ["/v4/supported-locations"],
        produces = ["application/json"],
        consumes = ["application/json"]
    )
    fun supportedLocations( @Valid @RequestBody requestSupportedLocations: RequestSupportedLocations
): ResponseEntity<ResponseSupportedLocations> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @PostMapping(
        value = ["/v4/time-filter"],
        produces = ["application/json"],
        consumes = ["application/json"]
    )
    fun timeFilter( @Valid @RequestBody requestTimeFilter: RequestTimeFilter
): ResponseEntity<ResponseTimeFilter> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @PostMapping(
        value = ["/v4/time-filter/fast"],
        produces = ["application/json"],
        consumes = ["application/json"]
    )
    fun timeFilterFast( @Valid @RequestBody requestTimeFilterFast: RequestTimeFilterFast
): ResponseEntity<ResponseTimeFilterFast> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @PostMapping(
        value = ["/v4/time-filter/postcode-districts"],
        produces = ["application/json"],
        consumes = ["application/json"]
    )
    fun timeFilterPostcodeDistricts( @Valid @RequestBody requestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts
): ResponseEntity<ResponseTimeFilterPostcodeDistricts> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @PostMapping(
        value = ["/v4/time-filter/postcode-sectors"],
        produces = ["application/json"],
        consumes = ["application/json"]
    )
    fun timeFilterPostcodeSectors( @Valid @RequestBody requestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors
): ResponseEntity<ResponseTimeFilterPostcodeSectors> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @PostMapping(
        value = ["/v4/time-filter/postcodes"],
        produces = ["application/json"],
        consumes = ["application/json"]
    )
    fun timeFilterPostcodes( @Valid @RequestBody requestTimeFilterPostcodes: RequestTimeFilterPostcodes
): ResponseEntity<ResponseTimeFilterPostcodes> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @PostMapping(
        value = ["/v4/time-map"],
        produces = ["application/json", "application/vnd.wkt+json", "application/vnd.wkt-no-holes+json", "application/vnd.bounding-boxes+json"],
        consumes = ["application/json"]
    )
    fun timeMap( @Valid @RequestBody requestTimeMap: RequestTimeMap
): ResponseEntity<ResponseTimeMap> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }
}
