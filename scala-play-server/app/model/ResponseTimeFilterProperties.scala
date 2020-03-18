package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterProperties.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseTimeFilterProperties(
  travelUnderscoretime: Option[Int],
  distance: Option[Int],
  distanceUnderscorebreakdown: Option[List[ResponseDistanceBreakdownItem]],
  fares: Option[ResponseFares],
  route: Option[ResponseRoute]
)

object ResponseTimeFilterProperties {
  implicit lazy val responseTimeFilterPropertiesJsonFormat: Format[ResponseTimeFilterProperties] = Json.format[ResponseTimeFilterProperties]
}

