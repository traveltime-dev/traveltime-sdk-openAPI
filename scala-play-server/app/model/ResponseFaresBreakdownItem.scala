package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseFaresBreakdownItem.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseFaresBreakdownItem(
  modes: List[ResponseTransportationMode],
  routePartIds: List[Int],
  tickets: List[ResponseFareTicket]
)

object ResponseFaresBreakdownItem {
  implicit lazy val responseFaresBreakdownItemJsonFormat: Format[ResponseFaresBreakdownItem] = Json.format[ResponseFaresBreakdownItem]
}

