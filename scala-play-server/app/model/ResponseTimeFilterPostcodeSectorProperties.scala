package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodeSectorProperties.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeFilterPostcodeSectorProperties(
  travelUnderscoretimeUnderscorereachable: Option[ResponseTravelTimeStatistics],
  travelUnderscoretimeUnderscoreall: Option[ResponseTravelTimeStatistics],
  coverage: Option[Double]
)

object ResponseTimeFilterPostcodeSectorProperties {
  implicit lazy val responseTimeFilterPostcodeSectorPropertiesJsonFormat: Format[ResponseTimeFilterPostcodeSectorProperties] = Json.format[ResponseTimeFilterPostcodeSectorProperties]
}

