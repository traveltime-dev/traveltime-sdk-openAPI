package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import org.joda.time.DateTime

import ResponseMapInfoFeaturesPublicTransport._

case class ResponseMapInfoFeaturesPublicTransport (
  dateStart: DateTime,
dateEnd: DateTime)

object ResponseMapInfoFeaturesPublicTransport {
  import DateTimeCodecs._

  implicit val ResponseMapInfoFeaturesPublicTransportCodecJson: CodecJson[ResponseMapInfoFeaturesPublicTransport] = CodecJson.derive[ResponseMapInfoFeaturesPublicTransport]
  implicit val ResponseMapInfoFeaturesPublicTransportDecoder: EntityDecoder[ResponseMapInfoFeaturesPublicTransport] = jsonOf[ResponseMapInfoFeaturesPublicTransport]
  implicit val ResponseMapInfoFeaturesPublicTransportEncoder: EntityEncoder[ResponseMapInfoFeaturesPublicTransport] = jsonEncoderOf[ResponseMapInfoFeaturesPublicTransport]
}
