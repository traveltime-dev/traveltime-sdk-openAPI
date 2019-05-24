package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseFaresFast.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseFaresFast(
  ticketsUnderscoretotal: List[ResponseFareTicket]
)

object ResponseFaresFast {
  implicit lazy val responseFaresFastJsonFormat: Format[ResponseFaresFast] = Json.format[ResponseFaresFast]
}

