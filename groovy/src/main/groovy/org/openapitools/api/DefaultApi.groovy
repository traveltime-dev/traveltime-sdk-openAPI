package org.openapitools.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import org.openapitools.api.ApiUtils

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

import java.util.*;

@Mixin(ApiUtils)
class DefaultApi {
    String basePath = "https://api.traveltimeapp.com"
    String versionPath = "/api/v1"

    def geocodingReverseSearch ( Double focusLat, Double focusLng, String withinCountry, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/v4/geocoding/reverse"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (focusLat == null) {
            throw new RuntimeException("missing required params focusLat")
        }

        // verify required params are set
        if (focusLng == null) {
            throw new RuntimeException("missing required params focusLng")
        }

        if (!"null".equals(String.valueOf(focusLat)))
            queryParams.put("focus.lat", String.valueOf(focusLat))

        if (!"null".equals(String.valueOf(focusLng)))
            queryParams.put("focus.lng", String.valueOf(focusLng))

        if (!"null".equals(String.valueOf(withinCountry)))
            queryParams.put("within.country", String.valueOf(withinCountry))

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    ResponseGeocoding.class )

    }

    def geocodingSearch ( String query, String withinCountry, Double focusLat, Double focusLng, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/v4/geocoding/search"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (query == null) {
            throw new RuntimeException("missing required params query")
        }

        if (!"null".equals(String.valueOf(query)))
            queryParams.put("query", String.valueOf(query))

        if (!"null".equals(String.valueOf(withinCountry)))
            queryParams.put("within.country", String.valueOf(withinCountry))

        if (!"null".equals(String.valueOf(focusLat)))
            queryParams.put("focus.lat", String.valueOf(focusLat))

        if (!"null".equals(String.valueOf(focusLng)))
            queryParams.put("focus.lng", String.valueOf(focusLng))

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    ResponseGeocoding.class )

    }

    def mapInfo ( Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/v4/map-info"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    ResponseMapInfo.class )

    }

    def routes ( RequestRoutes requestRoutes, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/v4/routes"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (requestRoutes == null) {
            throw new RuntimeException("missing required params requestRoutes")
        }

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    ResponseRoutes.class )

    }

    def supportedLocations ( RequestSupportedLocations requestSupportedLocations, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/v4/supported-locations"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (requestSupportedLocations == null) {
            throw new RuntimeException("missing required params requestSupportedLocations")
        }

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    ResponseSupportedLocations.class )

    }

    def timeFilter ( RequestTimeFilter requestTimeFilter, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/v4/time-filter"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (requestTimeFilter == null) {
            throw new RuntimeException("missing required params requestTimeFilter")
        }

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    ResponseTimeFilter.class )

    }

    def timeFilterFast ( RequestTimeFilterFast requestTimeFilterFast, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/v4/time-filter/fast"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (requestTimeFilterFast == null) {
            throw new RuntimeException("missing required params requestTimeFilterFast")
        }

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    ResponseTimeFilterFast.class )

    }

    def timeFilterPostcodeDistricts ( RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/v4/time-filter/postcode-districts"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (requestTimeFilterPostcodeDistricts == null) {
            throw new RuntimeException("missing required params requestTimeFilterPostcodeDistricts")
        }

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    ResponseTimeFilterPostcodeDistricts.class )

    }

    def timeFilterPostcodeSectors ( RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/v4/time-filter/postcode-sectors"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (requestTimeFilterPostcodeSectors == null) {
            throw new RuntimeException("missing required params requestTimeFilterPostcodeSectors")
        }

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    ResponseTimeFilterPostcodeSectors.class )

    }

    def timeFilterPostcodes ( RequestTimeFilterPostcodes requestTimeFilterPostcodes, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/v4/time-filter/postcodes"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (requestTimeFilterPostcodes == null) {
            throw new RuntimeException("missing required params requestTimeFilterPostcodes")
        }

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    ResponseTimeFilterPostcodes.class )

    }

    def timeMap ( RequestTimeMap requestTimeMap, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/v4/time-map"

        // query params
        def queryParams = [:]
        def headerParams = [:]

        // verify required params are set
        if (requestTimeMap == null) {
            throw new RuntimeException("missing required params requestTimeMap")
        }

        // TODO: form params, body param not yet support

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    ResponseTimeMap.class )

    }

}
