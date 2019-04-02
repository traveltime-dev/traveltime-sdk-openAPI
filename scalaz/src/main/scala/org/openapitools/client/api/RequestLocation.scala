package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import RequestLocation._

case class RequestLocation (
  id: String,
coords: Coords)

object RequestLocation {
  import DateTimeCodecs._

  implicit val RequestLocationCodecJson: CodecJson[RequestLocation] = CodecJson.derive[RequestLocation]
  implicit val RequestLocationDecoder: EntityDecoder[RequestLocation] = jsonOf[RequestLocation]
  implicit val RequestLocationEncoder: EntityEncoder[RequestLocation] = jsonEncoderOf[RequestLocation]
}
