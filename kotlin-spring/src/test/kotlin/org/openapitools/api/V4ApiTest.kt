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
import org.junit.jupiter.api.Test

import org.springframework.http.ResponseEntity

class V4ApiTest {

    
    private val api: V4ApiController = V4ApiController()

    
    /**
    * 
    *
    * 
    *
    * @throws ApiException
    *          if the Api call fails
    */
    @Test
    fun geocodingReverseSearchTest() {
        val lat:kotlin.Double? = null
        val lng:kotlin.Double? = null
        val withinPeriodCountry:kotlin.String? = null
        val response: ResponseEntity<ResponseGeocoding> = api.geocodingReverseSearch(lat!!, lng!!, withinPeriodCountry!!)

        // TODO: test validations
    }
    
    /**
    * 
    *
    * 
    *
    * @throws ApiException
    *          if the Api call fails
    */
    @Test
    fun geocodingSearchTest() {
        val query:kotlin.String? = null
        val focusPeriodLat:kotlin.Double? = null
        val focusPeriodLng:kotlin.Double? = null
        val withinPeriodCountry:kotlin.String? = null
        val response: ResponseEntity<ResponseGeocoding> = api.geocodingSearch(query!!, focusPeriodLat!!, focusPeriodLng!!, withinPeriodCountry!!)

        // TODO: test validations
    }
    
    /**
    * 
    *
    * 
    *
    * @throws ApiException
    *          if the Api call fails
    */
    @Test
    fun mapInfoTest() {
        val response: ResponseEntity<ResponseMapInfo> = api.mapInfo()

        // TODO: test validations
    }
    
    /**
    * 
    *
    * 
    *
    * @throws ApiException
    *          if the Api call fails
    */
    @Test
    fun routesTest() {
        val requestRoutes:RequestRoutes? = null
        val response: ResponseEntity<ResponseRoutes> = api.routes(requestRoutes!!)

        // TODO: test validations
    }
    
    /**
    * 
    *
    * 
    *
    * @throws ApiException
    *          if the Api call fails
    */
    @Test
    fun supportedLocationsTest() {
        val requestSupportedLocations:RequestSupportedLocations? = null
        val response: ResponseEntity<ResponseSupportedLocations> = api.supportedLocations(requestSupportedLocations!!)

        // TODO: test validations
    }
    
    /**
    * 
    *
    * 
    *
    * @throws ApiException
    *          if the Api call fails
    */
    @Test
    fun timeFilterTest() {
        val requestTimeFilter:RequestTimeFilter? = null
        val response: ResponseEntity<ResponseTimeFilter> = api.timeFilter(requestTimeFilter!!)

        // TODO: test validations
    }
    
    /**
    * 
    *
    * 
    *
    * @throws ApiException
    *          if the Api call fails
    */
    @Test
    fun timeFilterFastTest() {
        val requestTimeFilterFast:RequestTimeFilterFast? = null
        val response: ResponseEntity<ResponseTimeFilterFast> = api.timeFilterFast(requestTimeFilterFast!!)

        // TODO: test validations
    }
    
    /**
    * 
    *
    * 
    *
    * @throws ApiException
    *          if the Api call fails
    */
    @Test
    fun timeFilterPostcodeDistrictsTest() {
        val requestTimeFilterPostcodeDistricts:RequestTimeFilterPostcodeDistricts? = null
        val response: ResponseEntity<ResponseTimeFilterPostcodeDistricts> = api.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts!!)

        // TODO: test validations
    }
    
    /**
    * 
    *
    * 
    *
    * @throws ApiException
    *          if the Api call fails
    */
    @Test
    fun timeFilterPostcodeSectorsTest() {
        val requestTimeFilterPostcodeSectors:RequestTimeFilterPostcodeSectors? = null
        val response: ResponseEntity<ResponseTimeFilterPostcodeSectors> = api.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors!!)

        // TODO: test validations
    }
    
    /**
    * 
    *
    * 
    *
    * @throws ApiException
    *          if the Api call fails
    */
    @Test
    fun timeFilterPostcodesTest() {
        val requestTimeFilterPostcodes:RequestTimeFilterPostcodes? = null
        val response: ResponseEntity<ResponseTimeFilterPostcodes> = api.timeFilterPostcodes(requestTimeFilterPostcodes!!)

        // TODO: test validations
    }
    
    /**
    * 
    *
    * 
    *
    * @throws ApiException
    *          if the Api call fails
    */
    @Test
    fun timeMapTest() {
        val requestTimeMap:RequestTimeMap? = null
        val response: ResponseEntity<ResponseTimeMap> = api.timeMap(requestTimeMap!!)

        // TODO: test validations
    }
    
}
