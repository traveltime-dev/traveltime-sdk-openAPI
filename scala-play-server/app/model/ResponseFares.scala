package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseFares.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseFares(
  breakdown: List[ResponseFaresBreakdownItem],
  ticketsUnderscoretotal: List[ResponseFareTicket]
)

object ResponseFares {
  implicit lazy val responseFaresJsonFormat: Format[ResponseFares] = Json.format[ResponseFares]
}

