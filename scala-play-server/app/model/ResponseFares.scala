package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseFares.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseFares(
  breakdown: List[ResponseFaresBreakdownItem],
  ticketsTotal: List[ResponseFareTicket]
)

object ResponseFares {
  implicit lazy val responseFaresJsonFormat: Format[ResponseFares] = Json.format[ResponseFares]
}

