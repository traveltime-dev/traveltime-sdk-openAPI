package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseMapInfoMap._

case class ResponseMapInfoMap (
  name: String,
features: ResponseMapInfoFeatures)

object ResponseMapInfoMap {
  import DateTimeCodecs._

  implicit val ResponseMapInfoMapCodecJson: CodecJson[ResponseMapInfoMap] = CodecJson.derive[ResponseMapInfoMap]
  implicit val ResponseMapInfoMapDecoder: EntityDecoder[ResponseMapInfoMap] = jsonOf[ResponseMapInfoMap]
  implicit val ResponseMapInfoMapEncoder: EntityEncoder[ResponseMapInfoMap] = jsonEncoderOf[ResponseMapInfoMap]
}
