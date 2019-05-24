package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodeDistrictProperties.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeFilterPostcodeDistrictProperties(
  travelUnderscoretimeUnderscorereachable: Option[ResponseTravelTimeStatistics],
  travelUnderscoretimeUnderscoreall: Option[ResponseTravelTimeStatistics],
  coverage: Option[Double]
)

object ResponseTimeFilterPostcodeDistrictProperties {
  implicit lazy val responseTimeFilterPostcodeDistrictPropertiesJsonFormat: Format[ResponseTimeFilterPostcodeDistrictProperties] = Json.format[ResponseTimeFilterPostcodeDistrictProperties]
}

