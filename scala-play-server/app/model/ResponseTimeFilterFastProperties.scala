package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterFastProperties.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class ResponseTimeFilterFastProperties(
  travelTime: Option[Int],
  fares: Option[ResponseFaresFast]
)

object ResponseTimeFilterFastProperties {
  implicit lazy val responseTimeFilterFastPropertiesJsonFormat: Format[ResponseTimeFilterFastProperties] = Json.format[ResponseTimeFilterFastProperties]
}

