package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseRoutesLocation._

case class ResponseRoutesLocation (
  id: String,
properties: List[ResponseRoutesProperties])

object ResponseRoutesLocation {
  import DateTimeCodecs._

  implicit val ResponseRoutesLocationCodecJson: CodecJson[ResponseRoutesLocation] = CodecJson.derive[ResponseRoutesLocation]
  implicit val ResponseRoutesLocationDecoder: EntityDecoder[ResponseRoutesLocation] = jsonOf[ResponseRoutesLocation]
  implicit val ResponseRoutesLocationEncoder: EntityEncoder[ResponseRoutesLocation] = jsonEncoderOf[ResponseRoutesLocation]
}
