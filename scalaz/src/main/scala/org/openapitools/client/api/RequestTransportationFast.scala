package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import RequestTransportationFast._

case class RequestTransportationFast (
  `type`: `Type`)

object RequestTransportationFast {
  import DateTimeCodecs._
  sealed trait `Type`
  case object PublicTransport extends `Type`
  case object Driving extends `Type`
  case object DrivingpublicTransport extends `Type`

  object `Type` {
    def to`Type`(s: String): Option[`Type`] = s match {
      case "PublicTransport" => Some(PublicTransport)
      case "Driving" => Some(Driving)
      case "DrivingpublicTransport" => Some(DrivingpublicTransport)
      case _ => None
    }

    def from`Type`(x: `Type`): String = x match {
      case PublicTransport => "PublicTransport"
      case Driving => "Driving"
      case DrivingpublicTransport => "DrivingpublicTransport"
    }
  }

  implicit val `Type`EnumEncoder: EncodeJson[`Type`] =
    EncodeJson[`Type`](is => StringEncodeJson(`Type`.from`Type`(is)))

  implicit val `Type`EnumDecoder: DecodeJson[`Type`] =
    DecodeJson.optionDecoder[`Type`](n => n.string.flatMap(jStr => `Type`.to`Type`(jStr)), "`Type` failed to de-serialize")

  implicit val RequestTransportationFastCodecJson: CodecJson[RequestTransportationFast] = CodecJson.derive[RequestTransportationFast]
  implicit val RequestTransportationFastDecoder: EntityDecoder[RequestTransportationFast] = jsonOf[RequestTransportationFast]
  implicit val RequestTransportationFastEncoder: EntityEncoder[RequestTransportationFast] = jsonEncoderOf[RequestTransportationFast]
}
