package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseDistanceBreakdownItem.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseDistanceBreakdownItem(
  mode: ResponseTransportationMode,
  distance: Int
)

object ResponseDistanceBreakdownItem {
  implicit lazy val responseDistanceBreakdownItemJsonFormat: Format[ResponseDistanceBreakdownItem] = Json.format[ResponseDistanceBreakdownItem]
}

