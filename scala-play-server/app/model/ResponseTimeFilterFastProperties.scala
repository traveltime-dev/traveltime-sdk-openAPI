package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterFastProperties.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseTimeFilterFastProperties(
  travelTime: Option[Int],
  fares: Option[ResponseFaresFast]
)

object ResponseTimeFilterFastProperties {
  implicit lazy val responseTimeFilterFastPropertiesJsonFormat: Format[ResponseTimeFilterFastProperties] = Json.format[ResponseTimeFilterFastProperties]
}

