package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import org.joda.time.DateTime

import ResponseRoute._

case class ResponseRoute (
  departureTime: DateTime,
arrivalTime: DateTime,
parts: List[ResponseRoutePart])

object ResponseRoute {
  import DateTimeCodecs._

  implicit val ResponseRouteCodecJson: CodecJson[ResponseRoute] = CodecJson.derive[ResponseRoute]
  implicit val ResponseRouteDecoder: EntityDecoder[ResponseRoute] = jsonOf[ResponseRoute]
  implicit val ResponseRouteEncoder: EntityEncoder[ResponseRoute] = jsonEncoderOf[ResponseRoute]
}
