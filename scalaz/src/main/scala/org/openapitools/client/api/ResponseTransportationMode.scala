package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseTransportationMode._

case class ResponseTransportationMode (
  
object ResponseTransportationMode {
  import DateTimeCodecs._

  implicit val ResponseTransportationModeCodecJson: CodecJson[ResponseTransportationMode] = CodecJson.derive[ResponseTransportationMode]
  implicit val ResponseTransportationModeDecoder: EntityDecoder[ResponseTransportationMode] = jsonOf[ResponseTransportationMode]
  implicit val ResponseTransportationModeEncoder: EntityEncoder[ResponseTransportationMode] = jsonEncoderOf[ResponseTransportationMode]
}
