package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseSupportedLocation._

case class ResponseSupportedLocation (
  id: String,
mapName: String)

object ResponseSupportedLocation {
  import DateTimeCodecs._

  implicit val ResponseSupportedLocationCodecJson: CodecJson[ResponseSupportedLocation] = CodecJson.derive[ResponseSupportedLocation]
  implicit val ResponseSupportedLocationDecoder: EntityDecoder[ResponseSupportedLocation] = jsonOf[ResponseSupportedLocation]
  implicit val ResponseSupportedLocationEncoder: EntityEncoder[ResponseSupportedLocation] = jsonEncoderOf[ResponseSupportedLocation]
}
