package api

import org.openapitools.OpenApiExceptions
import javax.inject.{Inject, Singleton}
import play.api.libs.json._
import play.api.mvc._
import model.RequestRoutes
import model.RequestSupportedLocations
import model.RequestTimeFilter
import model.RequestTimeFilterFast
import model.RequestTimeFilterPostcodeDistricts
import model.RequestTimeFilterPostcodeSectors
import model.RequestTimeFilterPostcodes
import model.RequestTimeMap
import model.ResponseError
import model.ResponseGeocoding
import model.ResponseMapInfo
import model.ResponseRoutes
import model.ResponseSupportedLocations
import model.ResponseTimeFilter
import model.ResponseTimeFilterFast
import model.ResponseTimeFilterPostcodeDistricts
import model.ResponseTimeFilterPostcodeSectors
import model.ResponseTimeFilterPostcodes
import model.ResponseTimeMap

@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
@Singleton
class DefaultApiController @Inject()(cc: ControllerComponents, api: DefaultApi) extends AbstractController(cc) {
  /**
    * GET /v4/geocoding/reverse?focusPeriodlat=[value]&focusPeriodlng=[value]&withinPeriodcountry=[value]
    */
  def geocodingReverseSearch(): Action[AnyContent] = Action { request =>
    def executeApi(): ResponseGeocoding = {
      val focusPeriodlat = request.getQueryString("focus.lat")
        .map(value => value.toDouble)
        .getOrElse {
          throw new OpenApiExceptions.MissingRequiredParameterException("focus.lat", "query string")
        }
      val focusPeriodlng = request.getQueryString("focus.lng")
        .map(value => value.toDouble)
        .getOrElse {
          throw new OpenApiExceptions.MissingRequiredParameterException("focus.lng", "query string")
        }
      val withinPeriodcountry = request.getQueryString("within.country")
        
      api.geocodingReverseSearch(focusPeriodlat, focusPeriodlng, withinPeriodcountry)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /v4/geocoding/search?query=[value]&withinPeriodcountry=[value]&focusPeriodlat=[value]&focusPeriodlng=[value]
    */
  def geocodingSearch(): Action[AnyContent] = Action { request =>
    def executeApi(): ResponseGeocoding = {
      val query = request.getQueryString("query")
        .getOrElse {
          throw new OpenApiExceptions.MissingRequiredParameterException("query", "query string")
        }
      val withinPeriodcountry = request.getQueryString("within.country")
        
      val focusPeriodlat = request.getQueryString("focus.lat")
        .map(value => value.toDouble)
      val focusPeriodlng = request.getQueryString("focus.lng")
        .map(value => value.toDouble)
      api.geocodingSearch(query, withinPeriodcountry, focusPeriodlat, focusPeriodlng)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /v4/map-info
    */
  def mapInfo(): Action[AnyContent] = Action { request =>
    def executeApi(): ResponseMapInfo = {
      api.mapInfo()
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * POST /v4/routes
    */
  def routes(): Action[AnyContent] = Action { request =>
    def executeApi(): ResponseRoutes = {
      val requestRoutes = request.body.asJson.map(_.as[RequestRoutes]).getOrElse {
        throw new OpenApiExceptions.MissingRequiredParameterException("body", "requestRoutes")
      }
      api.routes(requestRoutes)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * POST /v4/supported-locations
    */
  def supportedLocations(): Action[AnyContent] = Action { request =>
    def executeApi(): ResponseSupportedLocations = {
      val requestSupportedLocations = request.body.asJson.map(_.as[RequestSupportedLocations]).getOrElse {
        throw new OpenApiExceptions.MissingRequiredParameterException("body", "requestSupportedLocations")
      }
      api.supportedLocations(requestSupportedLocations)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * POST /v4/time-filter
    */
  def timeFilter(): Action[AnyContent] = Action { request =>
    def executeApi(): ResponseTimeFilter = {
      val requestTimeFilter = request.body.asJson.map(_.as[RequestTimeFilter]).getOrElse {
        throw new OpenApiExceptions.MissingRequiredParameterException("body", "requestTimeFilter")
      }
      api.timeFilter(requestTimeFilter)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * POST /v4/time-filter/fast
    */
  def timeFilterFast(): Action[AnyContent] = Action { request =>
    def executeApi(): ResponseTimeFilterFast = {
      val requestTimeFilterFast = request.body.asJson.map(_.as[RequestTimeFilterFast]).getOrElse {
        throw new OpenApiExceptions.MissingRequiredParameterException("body", "requestTimeFilterFast")
      }
      api.timeFilterFast(requestTimeFilterFast)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * POST /v4/time-filter/postcode-districts
    */
  def timeFilterPostcodeDistricts(): Action[AnyContent] = Action { request =>
    def executeApi(): ResponseTimeFilterPostcodeDistricts = {
      val requestTimeFilterPostcodeDistricts = request.body.asJson.map(_.as[RequestTimeFilterPostcodeDistricts]).getOrElse {
        throw new OpenApiExceptions.MissingRequiredParameterException("body", "requestTimeFilterPostcodeDistricts")
      }
      api.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * POST /v4/time-filter/postcode-sectors
    */
  def timeFilterPostcodeSectors(): Action[AnyContent] = Action { request =>
    def executeApi(): ResponseTimeFilterPostcodeSectors = {
      val requestTimeFilterPostcodeSectors = request.body.asJson.map(_.as[RequestTimeFilterPostcodeSectors]).getOrElse {
        throw new OpenApiExceptions.MissingRequiredParameterException("body", "requestTimeFilterPostcodeSectors")
      }
      api.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * POST /v4/time-filter/postcodes
    */
  def timeFilterPostcodes(): Action[AnyContent] = Action { request =>
    def executeApi(): ResponseTimeFilterPostcodes = {
      val requestTimeFilterPostcodes = request.body.asJson.map(_.as[RequestTimeFilterPostcodes]).getOrElse {
        throw new OpenApiExceptions.MissingRequiredParameterException("body", "requestTimeFilterPostcodes")
      }
      api.timeFilterPostcodes(requestTimeFilterPostcodes)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * POST /v4/time-map
    */
  def timeMap(): Action[AnyContent] = Action { request =>
    def executeApi(): ResponseTimeMap = {
      val requestTimeMap = request.body.asJson.map(_.as[RequestTimeMap]).getOrElse {
        throw new OpenApiExceptions.MissingRequiredParameterException("body", "requestTimeMap")
      }
      api.timeMap(requestTimeMap)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  private def splitCollectionParam(paramValues: String, collectionFormat: String): List[String] = {
    val splitBy =
      collectionFormat match {
        case "csv" => ",+"
        case "tsv" => "\t+"
        case "ssv" => " +"
        case "pipes" => "|+"
      }

    paramValues.split(splitBy).toList
  }
}
