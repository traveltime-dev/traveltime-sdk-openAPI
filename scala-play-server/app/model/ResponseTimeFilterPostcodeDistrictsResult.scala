package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodeDistrictsResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class ResponseTimeFilterPostcodeDistrictsResult(
  searchId: String,
  districts: List[ResponseTimeFilterPostcodeDistrict]
)

object ResponseTimeFilterPostcodeDistrictsResult {
  implicit lazy val responseTimeFilterPostcodeDistrictsResultJsonFormat: Format[ResponseTimeFilterPostcodeDistrictsResult] = Json.format[ResponseTimeFilterPostcodeDistrictsResult]
}

