package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseFaresFast.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseFaresFast(
  ticketsUnderscoretotal: List[ResponseFareTicket]
)

object ResponseFaresFast {
  implicit lazy val responseFaresFastJsonFormat: Format[ResponseFaresFast] = Json.format[ResponseFaresFast]
}

