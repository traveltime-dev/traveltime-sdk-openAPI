package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseFaresBreakdownItem._

case class ResponseFaresBreakdownItem (
  modes: List[ResponseTransportationMode],
routePartIds: List[Integer],
tickets: List[ResponseFareTicket])

object ResponseFaresBreakdownItem {
  import DateTimeCodecs._

  implicit val ResponseFaresBreakdownItemCodecJson: CodecJson[ResponseFaresBreakdownItem] = CodecJson.derive[ResponseFaresBreakdownItem]
  implicit val ResponseFaresBreakdownItemDecoder: EntityDecoder[ResponseFaresBreakdownItem] = jsonOf[ResponseFaresBreakdownItem]
  implicit val ResponseFaresBreakdownItemEncoder: EntityEncoder[ResponseFaresBreakdownItem] = jsonEncoderOf[ResponseFaresBreakdownItem]
}
