package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseBox._

case class ResponseBox (
  minLat: Double,
maxLat: Double,
minLng: Double,
maxLng: Double)

object ResponseBox {
  import DateTimeCodecs._

  implicit val ResponseBoxCodecJson: CodecJson[ResponseBox] = CodecJson.derive[ResponseBox]
  implicit val ResponseBoxDecoder: EntityDecoder[ResponseBox] = jsonOf[ResponseBox]
  implicit val ResponseBoxEncoder: EntityEncoder[ResponseBox] = jsonEncoderOf[ResponseBox]
}
