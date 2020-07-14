package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterProperties.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseTimeFilterProperties(
  travelTime: Option[Int],
  distance: Option[Int],
  distanceBreakdown: Option[List[ResponseDistanceBreakdownItem]],
  fares: Option[ResponseFares],
  route: Option[ResponseRoute]
)

object ResponseTimeFilterProperties {
  implicit lazy val responseTimeFilterPropertiesJsonFormat: Format[ResponseTimeFilterProperties] = Json.format[ResponseTimeFilterProperties]
}

