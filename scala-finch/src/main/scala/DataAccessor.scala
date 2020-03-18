package org.openapitools

// TODO: properly handle custom imports
import java.io._
import java.util.UUID
import java.time._
import com.twitter.finagle.http.exp.Multipart.{FileUpload, InMemoryFileUpload, OnDiskFileUpload}

import org.openapitools.models._

trait DataAccessor {
    // TODO: apiInfo -> apis -> operations = TODO error
    private object TODO extends CommonError("Not implemented") {
        def message = "Not implemented"
    }

        /**
        * 
        * @return A ResponseGeocoding
        */
        def Default_geocodingReverseSearch(lat: Double, lng: Double, withinPeriodcountry: Option[String], authParamApiKey: String, authParamApplicationId: String): Either[CommonError,ResponseGeocoding] = Left(TODO)

        /**
        * 
        * @return A ResponseGeocoding
        */
        def Default_geocodingSearch(query: String, focusPeriodlat: Option[Double], focusPeriodlng: Option[Double], withinPeriodcountry: Option[String], authParamApiKey: String, authParamApplicationId: String): Either[CommonError,ResponseGeocoding] = Left(TODO)

        /**
        * 
        * @return A ResponseMapInfo
        */
        def Default_mapInfo(authParamApiKey: String, authParamApplicationId: String): Either[CommonError,ResponseMapInfo] = Left(TODO)

        /**
        * 
        * @return A ResponseRoutes
        */
        def Default_routes(requestRoutes: RequestRoutes, authParamApiKey: String, authParamApplicationId: String): Either[CommonError,ResponseRoutes] = Left(TODO)

        /**
        * 
        * @return A ResponseSupportedLocations
        */
        def Default_supportedLocations(requestSupportedLocations: RequestSupportedLocations, authParamApiKey: String, authParamApplicationId: String): Either[CommonError,ResponseSupportedLocations] = Left(TODO)

        /**
        * 
        * @return A ResponseTimeFilter
        */
        def Default_timeFilter(requestTimeFilter: RequestTimeFilter, authParamApiKey: String, authParamApplicationId: String): Either[CommonError,ResponseTimeFilter] = Left(TODO)

        /**
        * 
        * @return A ResponseTimeFilterFast
        */
        def Default_timeFilterFast(requestTimeFilterFast: RequestTimeFilterFast, authParamApiKey: String, authParamApplicationId: String): Either[CommonError,ResponseTimeFilterFast] = Left(TODO)

        /**
        * 
        * @return A ResponseTimeFilterPostcodeDistricts
        */
        def Default_timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts, authParamApiKey: String, authParamApplicationId: String): Either[CommonError,ResponseTimeFilterPostcodeDistricts] = Left(TODO)

        /**
        * 
        * @return A ResponseTimeFilterPostcodeSectors
        */
        def Default_timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors, authParamApiKey: String, authParamApplicationId: String): Either[CommonError,ResponseTimeFilterPostcodeSectors] = Left(TODO)

        /**
        * 
        * @return A ResponseTimeFilterPostcodes
        */
        def Default_timeFilterPostcodes(requestTimeFilterPostcodes: RequestTimeFilterPostcodes, authParamApiKey: String, authParamApplicationId: String): Either[CommonError,ResponseTimeFilterPostcodes] = Left(TODO)

        /**
        * 
        * @return A ResponseTimeMap
        */
        def Default_timeMap(requestTimeMap: RequestTimeMap, authParamApiKey: String, authParamApplicationId: String): Either[CommonError,ResponseTimeMap] = Left(TODO)

}