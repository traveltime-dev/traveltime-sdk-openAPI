package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseFaresFast._

case class ResponseFaresFast (
  ticketsTotal: List[ResponseFareTicket])

object ResponseFaresFast {
  import DateTimeCodecs._

  implicit val ResponseFaresFastCodecJson: CodecJson[ResponseFaresFast] = CodecJson.derive[ResponseFaresFast]
  implicit val ResponseFaresFastDecoder: EntityDecoder[ResponseFaresFast] = jsonOf[ResponseFaresFast]
  implicit val ResponseFaresFastEncoder: EntityEncoder[ResponseFaresFast] = jsonEncoderOf[ResponseFaresFast]
}
