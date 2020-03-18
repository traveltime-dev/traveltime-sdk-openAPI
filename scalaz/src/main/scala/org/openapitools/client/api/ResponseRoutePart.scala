package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseRoutePart._

case class ResponseRoutePart (
  id: String,
`type`: `Type`,
mode: ResponseTransportationMode,
directions: String,
distance: Integer,
travelTime: Integer,
coords: List[Coords],
direction: Option[String],
road: Option[String],
turn: Option[String],
line: Option[String],
departureStation: Option[String],
arrivalStation: Option[String],
departsAt: Option[String],
arrivesAt: Option[String],
numStops: Option[Integer])

object ResponseRoutePart {
  import DateTimeCodecs._
  sealed trait `Type`
  case object Basic extends `Type`
  case object StartEnd extends `Type`
  case object Road extends `Type`
  case object PublicTransport extends `Type`

  object `Type` {
    def to`Type`(s: String): Option[`Type`] = s match {
      case "Basic" => Some(Basic)
      case "StartEnd" => Some(StartEnd)
      case "Road" => Some(Road)
      case "PublicTransport" => Some(PublicTransport)
      case _ => None
    }

    def from`Type`(x: `Type`): String = x match {
      case Basic => "Basic"
      case StartEnd => "StartEnd"
      case Road => "Road"
      case PublicTransport => "PublicTransport"
    }
  }

  implicit val `Type`EnumEncoder: EncodeJson[`Type`] =
    EncodeJson[`Type`](is => StringEncodeJson(`Type`.from`Type`(is)))

  implicit val `Type`EnumDecoder: DecodeJson[`Type`] =
    DecodeJson.optionDecoder[`Type`](n => n.string.flatMap(jStr => `Type`.to`Type`(jStr)), "`Type` failed to de-serialize")

  implicit val ResponseRoutePartCodecJson: CodecJson[ResponseRoutePart] = CodecJson.derive[ResponseRoutePart]
  implicit val ResponseRoutePartDecoder: EntityDecoder[ResponseRoutePart] = jsonOf[ResponseRoutePart]
  implicit val ResponseRoutePartEncoder: EntityEncoder[ResponseRoutePart] = jsonEncoderOf[ResponseRoutePart]
}
