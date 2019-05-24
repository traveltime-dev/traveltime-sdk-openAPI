package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterFastProperties.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeFilterFastProperties(
  travelUnderscoretime: Option[Int],
  fares: Option[ResponseFaresFast]
)

object ResponseTimeFilterFastProperties {
  implicit lazy val responseTimeFilterFastPropertiesJsonFormat: Format[ResponseTimeFilterFastProperties] = Json.format[ResponseTimeFilterFastProperties]
}

