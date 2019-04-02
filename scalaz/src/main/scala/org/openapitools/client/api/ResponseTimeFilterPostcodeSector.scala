package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseTimeFilterPostcodeSector._

case class ResponseTimeFilterPostcodeSector (
  code: String,
properties: ResponseTimeFilterPostcodeSectorProperties)

object ResponseTimeFilterPostcodeSector {
  import DateTimeCodecs._

  implicit val ResponseTimeFilterPostcodeSectorCodecJson: CodecJson[ResponseTimeFilterPostcodeSector] = CodecJson.derive[ResponseTimeFilterPostcodeSector]
  implicit val ResponseTimeFilterPostcodeSectorDecoder: EntityDecoder[ResponseTimeFilterPostcodeSector] = jsonOf[ResponseTimeFilterPostcodeSector]
  implicit val ResponseTimeFilterPostcodeSectorEncoder: EntityEncoder[ResponseTimeFilterPostcodeSector] = jsonEncoderOf[ResponseTimeFilterPostcodeSector]
}
