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

/**
  * Provides a default implementation for [[DefaultApi]].
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
class DefaultApiImpl extends DefaultApi {
  /**
    * @inheritdoc
    */
  override def geocodingReverseSearch(lat: Double, lng: Double, withinPeriodcountry: Option[String]): ResponseGeocoding = {
    // TODO: Implement better logic

    ResponseGeocoding("", List.empty[ResponseGeocodingGeoJsonFeature])
  }

  /**
    * @inheritdoc
    */
  override def geocodingSearch(query: String, focusPeriodlat: Option[Double], focusPeriodlng: Option[Double], withinPeriodcountry: Option[String]): ResponseGeocoding = {
    // TODO: Implement better logic

    ResponseGeocoding("", List.empty[ResponseGeocodingGeoJsonFeature])
  }

  /**
    * @inheritdoc
    */
  override def mapInfo(): ResponseMapInfo = {
    // TODO: Implement better logic

    ResponseMapInfo(List.empty[ResponseMapInfoMap])
  }

  /**
    * @inheritdoc
    */
  override def routes(requestRoutes: RequestRoutes): ResponseRoutes = {
    // TODO: Implement better logic

    ResponseRoutes(List.empty[ResponseRoutesResult])
  }

  /**
    * @inheritdoc
    */
  override def supportedLocations(requestSupportedLocations: RequestSupportedLocations): ResponseSupportedLocations = {
    // TODO: Implement better logic

    ResponseSupportedLocations(List.empty[ResponseSupportedLocation], List.empty[String])
  }

  /**
    * @inheritdoc
    */
  override def timeFilter(requestTimeFilter: RequestTimeFilter): ResponseTimeFilter = {
    // TODO: Implement better logic

    ResponseTimeFilter(List.empty[ResponseTimeFilterResult])
  }

  /**
    * @inheritdoc
    */
  override def timeFilterFast(requestTimeFilterFast: RequestTimeFilterFast): ResponseTimeFilterFast = {
    // TODO: Implement better logic

    ResponseTimeFilterFast(List.empty[ResponseTimeFilterFastResult])
  }

  /**
    * @inheritdoc
    */
  override def timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts): ResponseTimeFilterPostcodeDistricts = {
    // TODO: Implement better logic

    ResponseTimeFilterPostcodeDistricts(List.empty[ResponseTimeFilterPostcodeDistrictsResult])
  }

  /**
    * @inheritdoc
    */
  override def timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors): ResponseTimeFilterPostcodeSectors = {
    // TODO: Implement better logic

    ResponseTimeFilterPostcodeSectors(List.empty[ResponseTimeFilterPostcodeSectorsResult])
  }

  /**
    * @inheritdoc
    */
  override def timeFilterPostcodes(requestTimeFilterPostcodes: RequestTimeFilterPostcodes): ResponseTimeFilterPostcodes = {
    // TODO: Implement better logic

    ResponseTimeFilterPostcodes(List.empty[ResponseTimeFilterPostcodesResult])
  }

  /**
    * @inheritdoc
    */
  override def timeMap(requestTimeMap: RequestTimeMap): ResponseTimeMap = {
    // TODO: Implement better logic

    ResponseTimeMap(List.empty[ResponseTimeMapResult])
  }
}
