package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterFastProperties.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseTimeFilterFastProperties(
  travelUnderscoretime: Option[Int],
  fares: Option[ResponseFaresFast]
)

object ResponseTimeFilterFastProperties {
  implicit lazy val responseTimeFilterFastPropertiesJsonFormat: Format[ResponseTimeFilterFastProperties] = Json.format[ResponseTimeFilterFastProperties]
}

