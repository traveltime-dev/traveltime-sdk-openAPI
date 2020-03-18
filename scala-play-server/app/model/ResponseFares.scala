package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseFares.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class ResponseFares(
  breakdown: List[ResponseFaresBreakdownItem],
  ticketsTotal: List[ResponseFareTicket]
)

object ResponseFares {
  implicit lazy val responseFaresJsonFormat: Format[ResponseFares] = Json.format[ResponseFares]
}

