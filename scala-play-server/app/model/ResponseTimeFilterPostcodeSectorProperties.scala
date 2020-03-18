package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodeSectorProperties.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseTimeFilterPostcodeSectorProperties(
  travelUnderscoretimeUnderscorereachable: Option[ResponseTravelTimeStatistics],
  travelUnderscoretimeUnderscoreall: Option[ResponseTravelTimeStatistics],
  coverage: Option[Double]
)

object ResponseTimeFilterPostcodeSectorProperties {
  implicit lazy val responseTimeFilterPostcodeSectorPropertiesJsonFormat: Format[ResponseTimeFilterPostcodeSectorProperties] = Json.format[ResponseTimeFilterPostcodeSectorProperties]
}

