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

@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
trait DefaultApi {
  /**
    */
  def geocodingReverseSearch(focusPeriodlat: Double, focusPeriodlng: Double, withinPeriodcountry: Option[String]): ResponseGeocoding

  /**
    */
  def geocodingSearch(query: String, withinPeriodcountry: Option[String], focusPeriodlat: Option[Double], focusPeriodlng: Option[Double]): ResponseGeocoding

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
