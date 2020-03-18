package org.openapitools.api;

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

class DefaultApi {
    String basePath = "https://api.traveltimeapp.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def geocodingReverseSearch ( Double lat, Double lng, String withinCountry, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v4/geocoding/reverse"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (lat == null) {
            throw new RuntimeException("missing required params lat")
        }
        // verify required params are set
        if (lng == null) {
            throw new RuntimeException("missing required params lng")
        }

        if (lat != null) {
            queryParams.put("lat", lat)
        }
        if (lng != null) {
            queryParams.put("lng", lng)
        }
        if (withinCountry != null) {
            queryParams.put("within.country", withinCountry)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ResponseGeocoding.class )

    }

    def geocodingSearch ( String query, Double focusLat, Double focusLng, String withinCountry, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v4/geocoding/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (query == null) {
            throw new RuntimeException("missing required params query")
        }

        if (query != null) {
            queryParams.put("query", query)
        }
        if (focusLat != null) {
            queryParams.put("focus.lat", focusLat)
        }
        if (focusLng != null) {
            queryParams.put("focus.lng", focusLng)
        }
        if (withinCountry != null) {
            queryParams.put("within.country", withinCountry)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ResponseGeocoding.class )

    }

    def mapInfo ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v4/map-info"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ResponseMapInfo.class )

    }

    def routes ( RequestRoutes requestRoutes, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v4/routes"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (requestRoutes == null) {
            throw new RuntimeException("missing required params requestRoutes")
        }



        contentType = 'application/json';
        bodyParams = requestRoutes


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ResponseRoutes.class )

    }

    def supportedLocations ( RequestSupportedLocations requestSupportedLocations, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v4/supported-locations"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (requestSupportedLocations == null) {
            throw new RuntimeException("missing required params requestSupportedLocations")
        }



        contentType = 'application/json';
        bodyParams = requestSupportedLocations


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ResponseSupportedLocations.class )

    }

    def timeFilter ( RequestTimeFilter requestTimeFilter, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v4/time-filter"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (requestTimeFilter == null) {
            throw new RuntimeException("missing required params requestTimeFilter")
        }



        contentType = 'application/json';
        bodyParams = requestTimeFilter


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ResponseTimeFilter.class )

    }

    def timeFilterFast ( RequestTimeFilterFast requestTimeFilterFast, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v4/time-filter/fast"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (requestTimeFilterFast == null) {
            throw new RuntimeException("missing required params requestTimeFilterFast")
        }



        contentType = 'application/json';
        bodyParams = requestTimeFilterFast


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ResponseTimeFilterFast.class )

    }

    def timeFilterPostcodeDistricts ( RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v4/time-filter/postcode-districts"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (requestTimeFilterPostcodeDistricts == null) {
            throw new RuntimeException("missing required params requestTimeFilterPostcodeDistricts")
        }



        contentType = 'application/json';
        bodyParams = requestTimeFilterPostcodeDistricts


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ResponseTimeFilterPostcodeDistricts.class )

    }

    def timeFilterPostcodeSectors ( RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v4/time-filter/postcode-sectors"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (requestTimeFilterPostcodeSectors == null) {
            throw new RuntimeException("missing required params requestTimeFilterPostcodeSectors")
        }



        contentType = 'application/json';
        bodyParams = requestTimeFilterPostcodeSectors


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ResponseTimeFilterPostcodeSectors.class )

    }

    def timeFilterPostcodes ( RequestTimeFilterPostcodes requestTimeFilterPostcodes, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v4/time-filter/postcodes"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (requestTimeFilterPostcodes == null) {
            throw new RuntimeException("missing required params requestTimeFilterPostcodes")
        }



        contentType = 'application/json';
        bodyParams = requestTimeFilterPostcodes


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ResponseTimeFilterPostcodes.class )

    }

    def timeMap ( RequestTimeMap requestTimeMap, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/v4/time-map"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (requestTimeMap == null) {
            throw new RuntimeException("missing required params requestTimeMap")
        }



        contentType = 'application/json';
        bodyParams = requestTimeMap


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ResponseTimeMap.class )

    }

}
