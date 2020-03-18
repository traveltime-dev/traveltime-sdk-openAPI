package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseFares.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseFares(
  breakdown: List[ResponseFaresBreakdownItem],
  ticketsUnderscoretotal: List[ResponseFareTicket]
)

object ResponseFares {
  implicit lazy val responseFaresJsonFormat: Format[ResponseFares] = Json.format[ResponseFares]
}

