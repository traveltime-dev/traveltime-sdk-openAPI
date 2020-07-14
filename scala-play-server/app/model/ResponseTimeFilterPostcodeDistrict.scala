package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodeDistrict.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseTimeFilterPostcodeDistrict(
  code: String,
  properties: ResponseTimeFilterPostcodeDistrictProperties
)

object ResponseTimeFilterPostcodeDistrict {
  implicit lazy val responseTimeFilterPostcodeDistrictJsonFormat: Format[ResponseTimeFilterPostcodeDistrict] = Json.format[ResponseTimeFilterPostcodeDistrict]
}

