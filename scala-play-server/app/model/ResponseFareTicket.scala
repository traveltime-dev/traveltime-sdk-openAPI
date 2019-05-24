package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseFareTicket.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseFareTicket(
  `type`: ResponseFareTicket.`Type`.Value,
  price: Double,
  currency: String
)

object ResponseFareTicket {
  implicit lazy val responseFareTicketJsonFormat: Format[ResponseFareTicket] = Json.format[ResponseFareTicket]

  // noinspection TypeAnnotation
  object `Type` extends Enumeration {
    val Single = Value("single")
    val Week = Value("week")
    val Month = Value("month")
    val Year = Value("year")

    type `Type` = Value
    implicit lazy val `Type`JsonFormat: Format[Value] = Format(Reads.enumNameReads(this), Writes.enumNameWrites[this.type])
  }
}

