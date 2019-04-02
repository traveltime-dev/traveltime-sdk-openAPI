package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseMapInfoFeatures._

case class ResponseMapInfoFeatures (
  publicTransport: Option[ResponseMapInfoFeaturesPublicTransport],
fares: Boolean,
postcodes: Boolean)

object ResponseMapInfoFeatures {
  import DateTimeCodecs._

  implicit val ResponseMapInfoFeaturesCodecJson: CodecJson[ResponseMapInfoFeatures] = CodecJson.derive[ResponseMapInfoFeatures]
  implicit val ResponseMapInfoFeaturesDecoder: EntityDecoder[ResponseMapInfoFeatures] = jsonOf[ResponseMapInfoFeatures]
  implicit val ResponseMapInfoFeaturesEncoder: EntityEncoder[ResponseMapInfoFeatures] = jsonEncoderOf[ResponseMapInfoFeatures]
}
