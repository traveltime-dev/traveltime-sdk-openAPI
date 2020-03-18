package api

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

@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
trait DefaultApi {
  /**
    */
  def geocodingReverseSearch(lat: Double, lng: Double, withinPeriodcountry: Option[String]): ResponseGeocoding

  /**
    */
  def geocodingSearch(query: String, focusPeriodlat: Option[Double], focusPeriodlng: Option[Double], withinPeriodcountry: Option[String]): ResponseGeocoding

  /**
    */
  def mapInfo(): ResponseMapInfo

  /**
    */
  def routes(requestRoutes: RequestRoutes): ResponseRoutes

  /**
    */
  def supportedLocations(requestSupportedLocations: RequestSupportedLocations): ResponseSupportedLocations

  /**
    */
  def timeFilter(requestTimeFilter: RequestTimeFilter): ResponseTimeFilter

  /**
    */
  def timeFilterFast(requestTimeFilterFast: RequestTimeFilterFast): ResponseTimeFilterFast

  /**
    */
  def timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts): ResponseTimeFilterPostcodeDistricts

  /**
    */
  def timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors): ResponseTimeFilterPostcodeSectors

  /**
    */
  def timeFilterPostcodes(requestTimeFilterPostcodes: RequestTimeFilterPostcodes): ResponseTimeFilterPostcodes

  /**
    */
  def timeMap(requestTimeMap: RequestTimeMap): ResponseTimeMap
}
