package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseFareTicket._

case class ResponseFareTicket (
  `type`: `Type`,
price: Double,
currency: String)

object ResponseFareTicket {
  import DateTimeCodecs._
  sealed trait `Type`
  case object Single extends `Type`
  case object Week extends `Type`
  case object Month extends `Type`
  case object Year extends `Type`

  object `Type` {
    def to`Type`(s: String): Option[`Type`] = s match {
      case "Single" => Some(Single)
      case "Week" => Some(Week)
      case "Month" => Some(Month)
      case "Year" => Some(Year)
      case _ => None
    }

    def from`Type`(x: `Type`): String = x match {
      case Single => "Single"
      case Week => "Week"
      case Month => "Month"
      case Year => "Year"
    }
  }

  implicit val `Type`EnumEncoder: EncodeJson[`Type`] =
    EncodeJson[`Type`](is => StringEncodeJson(`Type`.from`Type`(is)))

  implicit val `Type`EnumDecoder: DecodeJson[`Type`] =
    DecodeJson.optionDecoder[`Type`](n => n.string.flatMap(jStr => `Type`.to`Type`(jStr)), "`Type` failed to de-serialize")

  implicit val ResponseFareTicketCodecJson: CodecJson[ResponseFareTicket] = CodecJson.derive[ResponseFareTicket]
  implicit val ResponseFareTicketDecoder: EntityDecoder[ResponseFareTicket] = jsonOf[ResponseFareTicket]
  implicit val ResponseFareTicketEncoder: EntityEncoder[ResponseFareTicket] = jsonEncoderOf[ResponseFareTicket]
}
