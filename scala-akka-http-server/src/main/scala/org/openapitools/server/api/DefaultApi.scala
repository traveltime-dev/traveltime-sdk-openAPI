package org.openapitools.server.api

import akka.http.scaladsl.server.Directives._
import akka.http.scaladsl.server.Route
import akka.http.scaladsl.model.StatusCodes
import akka.http.scaladsl.marshalling.ToEntityMarshaller
import akka.http.scaladsl.unmarshalling.FromEntityUnmarshaller
import akka.http.scaladsl.unmarshalling.FromStringUnmarshaller
import org.openapitools.server.AkkaHttpHelper._
import org.openapitools.server.model.RequestRoutes
import org.openapitools.server.model.RequestSupportedLocations
import org.openapitools.server.model.RequestTimeFilter
import org.openapitools.server.model.RequestTimeFilterFast
import org.openapitools.server.model.RequestTimeFilterPostcodeDistricts
import org.openapitools.server.model.RequestTimeFilterPostcodeSectors
import org.openapitools.server.model.RequestTimeFilterPostcodes
import org.openapitools.server.model.RequestTimeMap
import org.openapitools.server.model.ResponseError
import org.openapitools.server.model.ResponseGeocoding
import org.openapitools.server.model.ResponseMapInfo
import org.openapitools.server.model.ResponseRoutes
import org.openapitools.server.model.ResponseSupportedLocations
import org.openapitools.server.model.ResponseTimeFilter
import org.openapitools.server.model.ResponseTimeFilterFast
import org.openapitools.server.model.ResponseTimeFilterPostcodeDistricts
import org.openapitools.server.model.ResponseTimeFilterPostcodeSectors
import org.openapitools.server.model.ResponseTimeFilterPostcodes
import org.openapitools.server.model.ResponseTimeMap


class DefaultApi(
    defaultService: DefaultApiService,
    defaultMarshaller: DefaultApiMarshaller
) {

  
  import defaultMarshaller._

  lazy val route: Route =
    path("v4" / "geocoding" / "reverse") { 
      get { 
        parameters("lat".as[Double], "lng".as[Double], "within.country".as[String].?) { (lat, lng, withinPeriodcountry) => 
            defaultService.geocodingReverseSearch(lat = lat, lng = lng, withinPeriodcountry = withinPeriodcountry)
        }
      }
    } ~
    path("v4" / "geocoding" / "search") { 
      get { 
        parameters("query".as[String], "focus.lat".as[Double].?, "focus.lng".as[Double].?, "within.country".as[String].?) { (query, focusPeriodlat, focusPeriodlng, withinPeriodcountry) => 
            defaultService.geocodingSearch(query = query, focusPeriodlat = focusPeriodlat, focusPeriodlng = focusPeriodlng, withinPeriodcountry = withinPeriodcountry)
        }
      }
    } ~
    path("v4" / "map-info") { 
      get {  
            defaultService.mapInfo()
      }
    } ~
    path("v4" / "routes") { 
      post {  
            entity(as[RequestRoutes]){ requestRoutes =>
              defaultService.routes(requestRoutes = requestRoutes)
            }
      }
    } ~
    path("v4" / "supported-locations") { 
      post {  
            entity(as[RequestSupportedLocations]){ requestSupportedLocations =>
              defaultService.supportedLocations(requestSupportedLocations = requestSupportedLocations)
            }
      }
    } ~
    path("v4" / "time-filter") { 
      post {  
            entity(as[RequestTimeFilter]){ requestTimeFilter =>
              defaultService.timeFilter(requestTimeFilter = requestTimeFilter)
            }
      }
    } ~
    path("v4" / "time-filter" / "fast") { 
      post {  
            entity(as[RequestTimeFilterFast]){ requestTimeFilterFast =>
              defaultService.timeFilterFast(requestTimeFilterFast = requestTimeFilterFast)
            }
      }
    } ~
    path("v4" / "time-filter" / "postcode-districts") { 
      post {  
            entity(as[RequestTimeFilterPostcodeDistricts]){ requestTimeFilterPostcodeDistricts =>
              defaultService.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts = requestTimeFilterPostcodeDistricts)
            }
      }
    } ~
    path("v4" / "time-filter" / "postcode-sectors") { 
      post {  
            entity(as[RequestTimeFilterPostcodeSectors]){ requestTimeFilterPostcodeSectors =>
              defaultService.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors = requestTimeFilterPostcodeSectors)
            }
      }
    } ~
    path("v4" / "time-filter" / "postcodes") { 
      post {  
            entity(as[RequestTimeFilterPostcodes]){ requestTimeFilterPostcodes =>
              defaultService.timeFilterPostcodes(requestTimeFilterPostcodes = requestTimeFilterPostcodes)
            }
      }
    } ~
    path("v4" / "time-map") { 
      post {  
            entity(as[RequestTimeMap]){ requestTimeMap =>
              defaultService.timeMap(requestTimeMap = requestTimeMap)
            }
      }
    }
}


trait DefaultApiService {

  def geocodingReverseSearch200(responseResponseGeocoding: ResponseGeocoding)(implicit toEntityMarshallerResponseGeocoding: ToEntityMarshaller[ResponseGeocoding]): Route =
    complete((200, responseResponseGeocoding))
  def geocodingReverseSearchDefault(statusCode: Int, responseResponseError: ResponseError)(implicit toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route =
    complete((statusCode, responseResponseError))
  /**
   * Code: 200, Message: Match a query string to geographic coordinates. [Docs link](http://docs.traveltime.com/reference/geocoding-search/), DataType: ResponseGeocoding
   * Code: 0, Message: The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response), DataType: ResponseError
   */
  def geocodingReverseSearch(lat: Double, lng: Double, withinPeriodcountry: Option[String])
      (implicit toEntityMarshallerResponseGeocoding: ToEntityMarshaller[ResponseGeocoding], toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route

  def geocodingSearch200(responseResponseGeocoding: ResponseGeocoding)(implicit toEntityMarshallerResponseGeocoding: ToEntityMarshaller[ResponseGeocoding]): Route =
    complete((200, responseResponseGeocoding))
  def geocodingSearchDefault(statusCode: Int, responseResponseError: ResponseError)(implicit toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route =
    complete((statusCode, responseResponseError))
  /**
   * Code: 200, Message: Match a query string to geographic coordinates. [Docs link](http://docs.traveltime.com/reference/geocoding-search/), DataType: ResponseGeocoding
   * Code: 0, Message: The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response), DataType: ResponseError
   */
  def geocodingSearch(query: String, focusPeriodlat: Option[Double], focusPeriodlng: Option[Double], withinPeriodcountry: Option[String])
      (implicit toEntityMarshallerResponseGeocoding: ToEntityMarshaller[ResponseGeocoding], toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route

  def mapInfo200(responseResponseMapInfo: ResponseMapInfo)(implicit toEntityMarshallerResponseMapInfo: ToEntityMarshaller[ResponseMapInfo]): Route =
    complete((200, responseResponseMapInfo))
  def mapInfoDefault(statusCode: Int, responseResponseError: ResponseError)(implicit toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route =
    complete((statusCode, responseResponseError))
  /**
   * Code: 200, Message: Returns information about currently supported countries. [Docs link](http://docs.traveltime.com/reference/map-info/), DataType: ResponseMapInfo
   * Code: 0, Message: The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response), DataType: ResponseError
   */
  def mapInfo()
      (implicit toEntityMarshallerResponseMapInfo: ToEntityMarshaller[ResponseMapInfo], toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route

  def routes200(responseResponseRoutes: ResponseRoutes)(implicit toEntityMarshallerResponseRoutes: ToEntityMarshaller[ResponseRoutes]): Route =
    complete((200, responseResponseRoutes))
  def routesDefault(statusCode: Int, responseResponseError: ResponseError)(implicit toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route =
    complete((statusCode, responseResponseError))
  /**
   * Code: 200, Message: Returns routing information between source and destinations. [Docs link](http://docs.traveltime.com/reference/routes/), DataType: ResponseRoutes
   * Code: 0, Message: The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response), DataType: ResponseError
   */
  def routes(requestRoutes: RequestRoutes)
      (implicit toEntityMarshallerResponseRoutes: ToEntityMarshaller[ResponseRoutes], toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route

  def supportedLocations200(responseResponseSupportedLocations: ResponseSupportedLocations)(implicit toEntityMarshallerResponseSupportedLocations: ToEntityMarshaller[ResponseSupportedLocations]): Route =
    complete((200, responseResponseSupportedLocations))
  def supportedLocationsDefault(statusCode: Int, responseResponseError: ResponseError)(implicit toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route =
    complete((statusCode, responseResponseError))
  /**
   * Code: 200, Message: Find out what points are supported by our api. [Docs link](http://docs.traveltime.com/reference/supported-locations/), DataType: ResponseSupportedLocations
   * Code: 0, Message: The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response), DataType: ResponseError
   */
  def supportedLocations(requestSupportedLocations: RequestSupportedLocations)
      (implicit toEntityMarshallerResponseSupportedLocations: ToEntityMarshaller[ResponseSupportedLocations], toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route

  def timeFilter200(responseResponseTimeFilter: ResponseTimeFilter)(implicit toEntityMarshallerResponseTimeFilter: ToEntityMarshaller[ResponseTimeFilter]): Route =
    complete((200, responseResponseTimeFilter))
  def timeFilterDefault(statusCode: Int, responseResponseError: ResponseError)(implicit toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route =
    complete((statusCode, responseResponseError))
  /**
   * Code: 200, Message: Given origin and destination points filter out points that cannot be reached within specified time limit. [Docs link](http://docs.traveltime.com/reference/time-filter), DataType: ResponseTimeFilter
   * Code: 0, Message: The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response), DataType: ResponseError
   */
  def timeFilter(requestTimeFilter: RequestTimeFilter)
      (implicit toEntityMarshallerResponseTimeFilter: ToEntityMarshaller[ResponseTimeFilter], toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route

  def timeFilterFast200(responseResponseTimeFilterFast: ResponseTimeFilterFast)(implicit toEntityMarshallerResponseTimeFilterFast: ToEntityMarshaller[ResponseTimeFilterFast]): Route =
    complete((200, responseResponseTimeFilterFast))
  def timeFilterFastDefault(statusCode: Int, responseResponseError: ResponseError)(implicit toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route =
    complete((statusCode, responseResponseError))
  /**
   * Code: 200, Message: A very fast version of Time Filter. [Docs link](http://docs.traveltime.com/reference/time-filter-fast/), DataType: ResponseTimeFilterFast
   * Code: 0, Message: The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response), DataType: ResponseError
   */
  def timeFilterFast(requestTimeFilterFast: RequestTimeFilterFast)
      (implicit toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError], toEntityMarshallerResponseTimeFilterFast: ToEntityMarshaller[ResponseTimeFilterFast]): Route

  def timeFilterPostcodeDistricts200(responseResponseTimeFilterPostcodeDistricts: ResponseTimeFilterPostcodeDistricts)(implicit toEntityMarshallerResponseTimeFilterPostcodeDistricts: ToEntityMarshaller[ResponseTimeFilterPostcodeDistricts]): Route =
    complete((200, responseResponseTimeFilterPostcodeDistricts))
  def timeFilterPostcodeDistrictsDefault(statusCode: Int, responseResponseError: ResponseError)(implicit toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route =
    complete((statusCode, responseResponseError))
  /**
   * Code: 200, Message: Find districts that have a certain coverage from origin and get statistics about postcodes within such districts. [Docs link](http://docs.traveltime.com/reference/postcode-district-filter/), DataType: ResponseTimeFilterPostcodeDistricts
   * Code: 0, Message: The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response), DataType: ResponseError
   */
  def timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts)
      (implicit toEntityMarshallerResponseTimeFilterPostcodeDistricts: ToEntityMarshaller[ResponseTimeFilterPostcodeDistricts], toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route

  def timeFilterPostcodeSectors200(responseResponseTimeFilterPostcodeSectors: ResponseTimeFilterPostcodeSectors)(implicit toEntityMarshallerResponseTimeFilterPostcodeSectors: ToEntityMarshaller[ResponseTimeFilterPostcodeSectors]): Route =
    complete((200, responseResponseTimeFilterPostcodeSectors))
  def timeFilterPostcodeSectorsDefault(statusCode: Int, responseResponseError: ResponseError)(implicit toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route =
    complete((statusCode, responseResponseError))
  /**
   * Code: 200, Message: Find sectors that have a certain coverage from origin and get statistics about postcodes within such sectors. [Docs link](http://docs.traveltime.com/reference/postcode-sector-filter/), DataType: ResponseTimeFilterPostcodeSectors
   * Code: 0, Message: The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response), DataType: ResponseError
   */
  def timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors)
      (implicit toEntityMarshallerResponseTimeFilterPostcodeSectors: ToEntityMarshaller[ResponseTimeFilterPostcodeSectors], toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route

  def timeFilterPostcodes200(responseResponseTimeFilterPostcodes: ResponseTimeFilterPostcodes)(implicit toEntityMarshallerResponseTimeFilterPostcodes: ToEntityMarshaller[ResponseTimeFilterPostcodes]): Route =
    complete((200, responseResponseTimeFilterPostcodes))
  def timeFilterPostcodesDefault(statusCode: Int, responseResponseError: ResponseError)(implicit toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route =
    complete((statusCode, responseResponseError))
  /**
   * Code: 200, Message: Find reachable postcodes from origin and get statistics about such postcodes. [Docs link](http://docs.traveltime.com/reference/postcode-search/), DataType: ResponseTimeFilterPostcodes
   * Code: 0, Message: The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response), DataType: ResponseError
   */
  def timeFilterPostcodes(requestTimeFilterPostcodes: RequestTimeFilterPostcodes)
      (implicit toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError], toEntityMarshallerResponseTimeFilterPostcodes: ToEntityMarshaller[ResponseTimeFilterPostcodes]): Route

  def timeMap200(responseResponseTimeMap: ResponseTimeMap)(implicit toEntityMarshallerResponseTimeMap: ToEntityMarshaller[ResponseTimeMap]): Route =
    complete((200, responseResponseTimeMap))
  def timeMapDefault(statusCode: Int, responseResponseError: ResponseError)(implicit toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route =
    complete((statusCode, responseResponseError))
  /**
   * Code: 200, Message: Given origin coordinates, find shapes of zones reachable within corresponding travel time. [Docs link](http://docs.traveltime.com/reference/time-map/), DataType: ResponseTimeMap
   * Code: 0, Message: The json body returned upon error. [Docs link](http://docs.traveltime.com/reference/error-response), DataType: ResponseError
   */
  def timeMap(requestTimeMap: RequestTimeMap)
      (implicit toEntityMarshallerResponseTimeMap: ToEntityMarshaller[ResponseTimeMap], toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]): Route

}

trait DefaultApiMarshaller {
  implicit def fromEntityUnmarshallerRequestTimeFilterPostcodeSectors: FromEntityUnmarshaller[RequestTimeFilterPostcodeSectors]

  implicit def fromEntityUnmarshallerRequestTimeMap: FromEntityUnmarshaller[RequestTimeMap]

  implicit def fromEntityUnmarshallerRequestSupportedLocations: FromEntityUnmarshaller[RequestSupportedLocations]

  implicit def fromEntityUnmarshallerRequestRoutes: FromEntityUnmarshaller[RequestRoutes]

  implicit def fromEntityUnmarshallerRequestTimeFilterPostcodeDistricts: FromEntityUnmarshaller[RequestTimeFilterPostcodeDistricts]

  implicit def fromEntityUnmarshallerRequestTimeFilterPostcodes: FromEntityUnmarshaller[RequestTimeFilterPostcodes]

  implicit def fromEntityUnmarshallerRequestTimeFilterFast: FromEntityUnmarshaller[RequestTimeFilterFast]

  implicit def fromEntityUnmarshallerRequestTimeFilter: FromEntityUnmarshaller[RequestTimeFilter]



  implicit def toEntityMarshallerResponseTimeFilter: ToEntityMarshaller[ResponseTimeFilter]

  implicit def toEntityMarshallerResponseGeocoding: ToEntityMarshaller[ResponseGeocoding]

  implicit def toEntityMarshallerResponseMapInfo: ToEntityMarshaller[ResponseMapInfo]

  implicit def toEntityMarshallerResponseTimeFilterPostcodeDistricts: ToEntityMarshaller[ResponseTimeFilterPostcodeDistricts]

  implicit def toEntityMarshallerResponseSupportedLocations: ToEntityMarshaller[ResponseSupportedLocations]

  implicit def toEntityMarshallerResponseTimeFilterPostcodeSectors: ToEntityMarshaller[ResponseTimeFilterPostcodeSectors]

  implicit def toEntityMarshallerResponseRoutes: ToEntityMarshaller[ResponseRoutes]

  implicit def toEntityMarshallerResponseTimeMap: ToEntityMarshaller[ResponseTimeMap]

  implicit def toEntityMarshallerResponseError: ToEntityMarshaller[ResponseError]

  implicit def toEntityMarshallerResponseTimeFilterFast: ToEntityMarshaller[ResponseTimeFilterFast]

  implicit def toEntityMarshallerResponseTimeFilterPostcodes: ToEntityMarshaller[ResponseTimeFilterPostcodes]

}

