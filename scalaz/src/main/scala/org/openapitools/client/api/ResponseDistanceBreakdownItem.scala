package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseDistanceBreakdownItem._

case class ResponseDistanceBreakdownItem (
  mode: ResponseTransportationMode,
distance: Integer)

object ResponseDistanceBreakdownItem {
  import DateTimeCodecs._

  implicit val ResponseDistanceBreakdownItemCodecJson: CodecJson[ResponseDistanceBreakdownItem] = CodecJson.derive[ResponseDistanceBreakdownItem]
  implicit val ResponseDistanceBreakdownItemDecoder: EntityDecoder[ResponseDistanceBreakdownItem] = jsonOf[ResponseDistanceBreakdownItem]
  implicit val ResponseDistanceBreakdownItemEncoder: EntityEncoder[ResponseDistanceBreakdownItem] = jsonEncoderOf[ResponseDistanceBreakdownItem]
}
