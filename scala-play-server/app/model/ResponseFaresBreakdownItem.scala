package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseFaresBreakdownItem.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseFaresBreakdownItem(
  modes: List[ResponseTransportationMode],
  routeUnderscorepartUnderscoreids: List[Int],
  tickets: List[ResponseFareTicket]
)

object ResponseFaresBreakdownItem {
  implicit lazy val responseFaresBreakdownItemJsonFormat: Format[ResponseFaresBreakdownItem] = Json.format[ResponseFaresBreakdownItem]
}

