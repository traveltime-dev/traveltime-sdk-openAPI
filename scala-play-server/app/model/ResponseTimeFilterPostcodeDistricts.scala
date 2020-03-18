package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodeDistricts.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class ResponseTimeFilterPostcodeDistricts(
  results: List[ResponseTimeFilterPostcodeDistrictsResult]
)

object ResponseTimeFilterPostcodeDistricts {
  implicit lazy val responseTimeFilterPostcodeDistrictsJsonFormat: Format[ResponseTimeFilterPostcodeDistricts] = Json.format[ResponseTimeFilterPostcodeDistricts]
}

