package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import RequestTransportation._

case class RequestTransportation (
  `type`: `Type`,
ptChangeDelay: Option[Integer],
walkingTime: Option[Integer],
drivingTimeToStation: Option[Integer],
parkingTime: Option[Integer],
boardingTime: Option[Integer])

object RequestTransportation {
  import DateTimeCodecs._
  sealed trait `Type`
  case object Cycling extends `Type`
  case object Driving extends `Type`
  case object Drivingtrain extends `Type`
  case object PublicTransport extends `Type`
  case object Walking extends `Type`
  case object Coach extends `Type`
  case object Bus extends `Type`
  case object Train extends `Type`
  case object Ferry extends `Type`
  case object Drivingferry extends `Type`
  case object Cyclingferry extends `Type`

  object `Type` {
    def to`Type`(s: String): Option[`Type`] = s match {
      case "Cycling" => Some(Cycling)
      case "Driving" => Some(Driving)
      case "Drivingtrain" => Some(Drivingtrain)
      case "PublicTransport" => Some(PublicTransport)
      case "Walking" => Some(Walking)
      case "Coach" => Some(Coach)
      case "Bus" => Some(Bus)
      case "Train" => Some(Train)
      case "Ferry" => Some(Ferry)
      case "Drivingferry" => Some(Drivingferry)
      case "Cyclingferry" => Some(Cyclingferry)
      case _ => None
    }

    def from`Type`(x: `Type`): String = x match {
      case Cycling => "Cycling"
      case Driving => "Driving"
      case Drivingtrain => "Drivingtrain"
      case PublicTransport => "PublicTransport"
      case Walking => "Walking"
      case Coach => "Coach"
      case Bus => "Bus"
      case Train => "Train"
      case Ferry => "Ferry"
      case Drivingferry => "Drivingferry"
      case Cyclingferry => "Cyclingferry"
    }
  }

  implicit val `Type`EnumEncoder: EncodeJson[`Type`] =
    EncodeJson[`Type`](is => StringEncodeJson(`Type`.from`Type`(is)))

  implicit val `Type`EnumDecoder: DecodeJson[`Type`] =
    DecodeJson.optionDecoder[`Type`](n => n.string.flatMap(jStr => `Type`.to`Type`(jStr)), "`Type` failed to de-serialize")

  implicit val RequestTransportationCodecJson: CodecJson[RequestTransportation] = CodecJson.derive[RequestTransportation]
  implicit val RequestTransportationDecoder: EntityDecoder[RequestTransportation] = jsonOf[RequestTransportation]
  implicit val RequestTransportationEncoder: EntityEncoder[RequestTransportation] = jsonEncoderOf[RequestTransportation]
}
