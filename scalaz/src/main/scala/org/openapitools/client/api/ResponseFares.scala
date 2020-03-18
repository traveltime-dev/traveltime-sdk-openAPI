package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseFares._

case class ResponseFares (
  breakdown: List[ResponseFaresBreakdownItem],
ticketsTotal: List[ResponseFareTicket])

object ResponseFares {
  import DateTimeCodecs._

  implicit val ResponseFaresCodecJson: CodecJson[ResponseFares] = CodecJson.derive[ResponseFares]
  implicit val ResponseFaresDecoder: EntityDecoder[ResponseFares] = jsonOf[ResponseFares]
  implicit val ResponseFaresEncoder: EntityEncoder[ResponseFares] = jsonEncoderOf[ResponseFares]
}
