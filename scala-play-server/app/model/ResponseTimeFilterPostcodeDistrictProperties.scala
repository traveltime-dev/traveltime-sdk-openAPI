package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodeDistrictProperties.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseTimeFilterPostcodeDistrictProperties(
  travelUnderscoretimeUnderscorereachable: Option[ResponseTravelTimeStatistics],
  travelUnderscoretimeUnderscoreall: Option[ResponseTravelTimeStatistics],
  coverage: Option[Double]
)

object ResponseTimeFilterPostcodeDistrictProperties {
  implicit lazy val responseTimeFilterPostcodeDistrictPropertiesJsonFormat: Format[ResponseTimeFilterPostcodeDistrictProperties] = Json.format[ResponseTimeFilterPostcodeDistrictProperties]
}

