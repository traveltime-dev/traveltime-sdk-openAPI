package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodeDistrictsResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseTimeFilterPostcodeDistrictsResult(
  searchUnderscoreid: String,
  districts: List[ResponseTimeFilterPostcodeDistrict]
)

object ResponseTimeFilterPostcodeDistrictsResult {
  implicit lazy val responseTimeFilterPostcodeDistrictsResultJsonFormat: Format[ResponseTimeFilterPostcodeDistrictsResult] = Json.format[ResponseTimeFilterPostcodeDistrictsResult]
}

