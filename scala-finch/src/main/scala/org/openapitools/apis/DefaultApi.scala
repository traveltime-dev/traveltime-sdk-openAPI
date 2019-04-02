package org.openapitools.apis

import java.io._
import traveltimeplatform._
import org.openapitools.models._
import org.openapitools.models.RequestRoutes
import org.openapitools.models.RequestSupportedLocations
import org.openapitools.models.RequestTimeFilter
import org.openapitools.models.RequestTimeFilterFast
import org.openapitools.models.RequestTimeFilterPostcodeDistricts
import org.openapitools.models.RequestTimeFilterPostcodeSectors
import org.openapitools.models.RequestTimeFilterPostcodes
import org.openapitools.models.RequestTimeMap
import org.openapitools.models.ResponseError
import org.openapitools.models.ResponseGeocoding
import org.openapitools.models.ResponseMapInfo
import org.openapitools.models.ResponseRoutes
import org.openapitools.models.ResponseSupportedLocations
import org.openapitools.models.ResponseTimeFilter
import org.openapitools.models.ResponseTimeFilterFast
import org.openapitools.models.ResponseTimeFilterPostcodeDistricts
import org.openapitools.models.ResponseTimeFilterPostcodeSectors
import org.openapitools.models.ResponseTimeFilterPostcodes
import org.openapitools.models.ResponseTimeMap
import io.finch.circe._
import io.circe.generic.semiauto._
import com.twitter.concurrent.AsyncStream
import com.twitter.finagle.Service
import com.twitter.finagle.Http
import com.twitter.finagle.http.{Request, Response}
import com.twitter.finagle.http.exp.Multipart.{FileUpload, InMemoryFileUpload, OnDiskFileUpload}
import com.twitter.util.Future
import com.twitter.io.Buf
import io.finch._, items._
import java.io.File
import java.time._

object DefaultApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        geocodingReverseSearch(da) :+:
        geocodingSearch(da) :+:
        mapInfo(da) :+:
        routes(da) :+:
        supportedLocations(da) :+:
        timeFilter(da) :+:
        timeFilterFast(da) :+:
        timeFilterPostcodeDistricts(da) :+:
        timeFilterPostcodeSectors(da) :+:
        timeFilterPostcodes(da) :+:
        timeMap(da)


    private def checkError(e: CommonError) = e match {
      case InvalidInput(_) => BadRequest(e)
      case MissingIdentifier(_) => BadRequest(e)
      case RecordNotFound(_) => NotFound(e)
      case _ => InternalServerError(e)
    }

    implicit class StringOps(s: String) {

      import java.time.format.DateTimeFormatter

      lazy val localformatter: DateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd")
      lazy val datetimeformatter: DateTimeFormatter =
      DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSZ")

      def toLocalDateTime: LocalDateTime = LocalDateTime.parse(s,localformatter)
      def toZonedDateTime: ZonedDateTime = ZonedDateTime.parse(s, datetimeformatter)

    }

        /**
        * 
        * @return An endpoint representing a ResponseGeocoding
        */
        private def geocodingReverseSearch(da: DataAccessor): Endpoint[ResponseGeocoding] =
        get("v4" :: "geocoding" :: "reverse" :: param("focus.lat").map(_.toDouble) :: param("focus.lng").map(_.toDouble) :: paramOption("within.country") :: header("X-Api-Key") :: header("X-Application-Id")) { (focusPeriodlat: Double, focusPeriodlng: Double, withinPeriodcountry: Option[String], authParamApiKey: String, authParamApplicationId: String) =>
          da.Default_geocodingReverseSearch(focusPeriodlat, focusPeriodlng, withinPeriodcountry, authParamApiKey, authParamApplicationId) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a ResponseGeocoding
        */
        private def geocodingSearch(da: DataAccessor): Endpoint[ResponseGeocoding] =
        get("v4" :: "geocoding" :: "search" :: param("query") :: paramOption("within.country") :: paramOption("focus.lat").map(_.map(_.toDouble)) :: paramOption("focus.lng").map(_.map(_.toDouble)) :: header("X-Api-Key") :: header("X-Application-Id")) { (query: String, withinPeriodcountry: Option[String], focusPeriodlat: Option[Double], focusPeriodlng: Option[Double], authParamApiKey: String, authParamApplicationId: String) =>
          da.Default_geocodingSearch(query, withinPeriodcountry, focusPeriodlat, focusPeriodlng, authParamApiKey, authParamApplicationId) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a ResponseMapInfo
        */
        private def mapInfo(da: DataAccessor): Endpoint[ResponseMapInfo] =
        get("v4" :: "map-info" :: header("X-Api-Key") :: header("X-Application-Id")) { (authParamApiKey: String, authParamApplicationId: String) =>
          da.Default_mapInfo(authParamApiKey, authParamApplicationId) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a ResponseRoutes
        */
        private def routes(da: DataAccessor): Endpoint[ResponseRoutes] =
        post("v4" :: "routes" :: jsonBody[RequestRoutes] :: header("X-Api-Key") :: header("X-Application-Id")) { (requestRoutes: RequestRoutes, authParamApiKey: String, authParamApplicationId: String) =>
          da.Default_routes(requestRoutes, authParamApiKey, authParamApplicationId) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a ResponseSupportedLocations
        */
        private def supportedLocations(da: DataAccessor): Endpoint[ResponseSupportedLocations] =
        post("v4" :: "supported-locations" :: jsonBody[RequestSupportedLocations] :: header("X-Api-Key") :: header("X-Application-Id")) { (requestSupportedLocations: RequestSupportedLocations, authParamApiKey: String, authParamApplicationId: String) =>
          da.Default_supportedLocations(requestSupportedLocations, authParamApiKey, authParamApplicationId) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a ResponseTimeFilter
        */
        private def timeFilter(da: DataAccessor): Endpoint[ResponseTimeFilter] =
        post("v4" :: "time-filter" :: jsonBody[RequestTimeFilter] :: header("X-Api-Key") :: header("X-Application-Id")) { (requestTimeFilter: RequestTimeFilter, authParamApiKey: String, authParamApplicationId: String) =>
          da.Default_timeFilter(requestTimeFilter, authParamApiKey, authParamApplicationId) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a ResponseTimeFilterFast
        */
        private def timeFilterFast(da: DataAccessor): Endpoint[ResponseTimeFilterFast] =
        post("v4" :: "time-filter" :: "fast" :: jsonBody[RequestTimeFilterFast] :: header("X-Api-Key") :: header("X-Application-Id")) { (requestTimeFilterFast: RequestTimeFilterFast, authParamApiKey: String, authParamApplicationId: String) =>
          da.Default_timeFilterFast(requestTimeFilterFast, authParamApiKey, authParamApplicationId) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a ResponseTimeFilterPostcodeDistricts
        */
        private def timeFilterPostcodeDistricts(da: DataAccessor): Endpoint[ResponseTimeFilterPostcodeDistricts] =
        post("v4" :: "time-filter" :: "postcode-districts" :: jsonBody[RequestTimeFilterPostcodeDistricts] :: header("X-Api-Key") :: header("X-Application-Id")) { (requestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts, authParamApiKey: String, authParamApplicationId: String) =>
          da.Default_timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts, authParamApiKey, authParamApplicationId) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a ResponseTimeFilterPostcodeSectors
        */
        private def timeFilterPostcodeSectors(da: DataAccessor): Endpoint[ResponseTimeFilterPostcodeSectors] =
        post("v4" :: "time-filter" :: "postcode-sectors" :: jsonBody[RequestTimeFilterPostcodeSectors] :: header("X-Api-Key") :: header("X-Application-Id")) { (requestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors, authParamApiKey: String, authParamApplicationId: String) =>
          da.Default_timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors, authParamApiKey, authParamApplicationId) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a ResponseTimeFilterPostcodes
        */
        private def timeFilterPostcodes(da: DataAccessor): Endpoint[ResponseTimeFilterPostcodes] =
        post("v4" :: "time-filter" :: "postcodes" :: jsonBody[RequestTimeFilterPostcodes] :: header("X-Api-Key") :: header("X-Application-Id")) { (requestTimeFilterPostcodes: RequestTimeFilterPostcodes, authParamApiKey: String, authParamApplicationId: String) =>
          da.Default_timeFilterPostcodes(requestTimeFilterPostcodes, authParamApiKey, authParamApplicationId) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a ResponseTimeMap
        */
        private def timeMap(da: DataAccessor): Endpoint[ResponseTimeMap] =
        post("v4" :: "time-map" :: jsonBody[RequestTimeMap] :: header("X-Api-Key") :: header("X-Application-Id")) { (requestTimeMap: RequestTimeMap, authParamApiKey: String, authParamApplicationId: String) =>
          da.Default_timeMap(requestTimeMap, authParamApiKey, authParamApplicationId) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }


    implicit private def fileUploadToFile(fileUpload: FileUpload) : File = {
      fileUpload match {
        case upload: InMemoryFileUpload =>
          bytesToFile(Buf.ByteArray.Owned.extract(upload.content))
        case upload: OnDiskFileUpload =>
          upload.content
        case _ => null
      }
    }

    private def bytesToFile(input: Array[Byte]): java.io.File = {
      val file = File.createTempFile("tmpDefaultApi", null)
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
