package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseRoutesProperties._

case class ResponseRoutesProperties (
  travelTime: Option[Integer],
distance: Option[Integer],
fares: Option[ResponseFares],
route: Option[ResponseRoute])

object ResponseRoutesProperties {
  import DateTimeCodecs._

  implicit val ResponseRoutesPropertiesCodecJson: CodecJson[ResponseRoutesProperties] = CodecJson.derive[ResponseRoutesProperties]
  implicit val ResponseRoutesPropertiesDecoder: EntityDecoder[ResponseRoutesProperties] = jsonOf[ResponseRoutesProperties]
  implicit val ResponseRoutesPropertiesEncoder: EntityEncoder[ResponseRoutesProperties] = jsonEncoderOf[ResponseRoutesProperties]
}
