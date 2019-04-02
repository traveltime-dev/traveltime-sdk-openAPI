package traveltimeplatform.apis

import traveltimeplatform.models.RequestRoutes
import traveltimeplatform.models.RequestSupportedLocations
import traveltimeplatform.models.RequestTimeFilter
import traveltimeplatform.models.RequestTimeFilterFast
import traveltimeplatform.models.RequestTimeFilterPostcodeDistricts
import traveltimeplatform.models.RequestTimeFilterPostcodeSectors
import traveltimeplatform.models.RequestTimeFilterPostcodes
import traveltimeplatform.models.RequestTimeMap
import traveltimeplatform.models.ResponseError
import traveltimeplatform.models.ResponseGeocoding
import traveltimeplatform.models.ResponseMapInfo
import traveltimeplatform.models.ResponseRoutes
import traveltimeplatform.models.ResponseSupportedLocations
import traveltimeplatform.models.ResponseTimeFilter
import traveltimeplatform.models.ResponseTimeFilterFast
import traveltimeplatform.models.ResponseTimeFilterPostcodeDistricts
import traveltimeplatform.models.ResponseTimeFilterPostcodeSectors
import traveltimeplatform.models.ResponseTimeFilterPostcodes
import traveltimeplatform.models.ResponseTimeMap
import org.springframework.http.HttpStatus
import org.springframework.http.MediaType
import org.springframework.http.ResponseEntity
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestPart
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestHeader
import org.springframework.web.bind.annotation.RequestMethod
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.validation.annotation.Validated
import org.springframework.web.context.request.NativeWebRequest
import org.springframework.web.multipart.MultipartFile
import org.springframework.beans.factory.annotation.Autowired

import javax.validation.Valid
import javax.validation.constraints.*

import kotlin.collections.List
import kotlin.collections.Map

@Controller
@Validated
@RequestMapping("\${api.base-path:}")
class DefaultApiController() {


    @RequestMapping(
            value = ["/v4/geocoding/reverse"],
            produces = ["application/json"], 
            method = [RequestMethod.GET])
    fun geocodingReverseSearch(@NotNull  @RequestParam(value = "focus.lat", required = true, defaultValue="null") focusLat: Double,@NotNull  @RequestParam(value = "focus.lng", required = true, defaultValue="null") focusLng: Double, @RequestParam(value = "within.country", required = false, defaultValue="null") withinCountry: String): ResponseEntity<ResponseGeocoding> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
            value = ["/v4/geocoding/search"],
            produces = ["application/json"], 
            method = [RequestMethod.GET])
    fun geocodingSearch(@NotNull  @RequestParam(value = "query", required = true, defaultValue="null") query: String, @RequestParam(value = "within.country", required = false, defaultValue="null") withinCountry: String, @RequestParam(value = "focus.lat", required = false, defaultValue="null") focusLat: Double, @RequestParam(value = "focus.lng", required = false, defaultValue="null") focusLng: Double): ResponseEntity<ResponseGeocoding> {
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
    fun routes( @Valid @RequestBody requestRoutes: RequestRoutes): ResponseEntity<ResponseRoutes> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
            value = ["/v4/supported-locations"],
            produces = ["application/json"], 
            consumes = ["application/json"],
            method = [RequestMethod.POST])
    fun supportedLocations( @Valid @RequestBody requestSupportedLocations: RequestSupportedLocations): ResponseEntity<ResponseSupportedLocations> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
            value = ["/v4/time-filter"],
            produces = ["application/json"], 
            consumes = ["application/json"],
            method = [RequestMethod.POST])
    fun timeFilter( @Valid @RequestBody requestTimeFilter: RequestTimeFilter): ResponseEntity<ResponseTimeFilter> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
            value = ["/v4/time-filter/fast"],
            produces = ["application/json"], 
            consumes = ["application/json"],
            method = [RequestMethod.POST])
    fun timeFilterFast( @Valid @RequestBody requestTimeFilterFast: RequestTimeFilterFast): ResponseEntity<ResponseTimeFilterFast> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
            value = ["/v4/time-filter/postcode-districts"],
            produces = ["application/json"], 
            consumes = ["application/json"],
            method = [RequestMethod.POST])
    fun timeFilterPostcodeDistricts( @Valid @RequestBody requestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts): ResponseEntity<ResponseTimeFilterPostcodeDistricts> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
            value = ["/v4/time-filter/postcode-sectors"],
            produces = ["application/json"], 
            consumes = ["application/json"],
            method = [RequestMethod.POST])
    fun timeFilterPostcodeSectors( @Valid @RequestBody requestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors): ResponseEntity<ResponseTimeFilterPostcodeSectors> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
            value = ["/v4/time-filter/postcodes"],
            produces = ["application/json"], 
            consumes = ["application/json"],
            method = [RequestMethod.POST])
    fun timeFilterPostcodes( @Valid @RequestBody requestTimeFilterPostcodes: RequestTimeFilterPostcodes): ResponseEntity<ResponseTimeFilterPostcodes> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }


    @RequestMapping(
            value = ["/v4/time-map"],
            produces = ["application/json", "application/vnd.wkt+json", "application/vnd.wkt-no-holes+json", "application/vnd.bounding-boxes+json"], 
            consumes = ["application/json"],
            method = [RequestMethod.POST])
    fun timeMap( @Valid @RequestBody requestTimeMap: RequestTimeMap): ResponseEntity<ResponseTimeMap> {
        return ResponseEntity(HttpStatus.NOT_IMPLEMENTED)
    }
}
