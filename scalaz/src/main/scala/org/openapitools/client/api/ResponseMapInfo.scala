package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseMapInfo._

case class ResponseMapInfo (
  maps: List[ResponseMapInfoMap])

object ResponseMapInfo {
  import DateTimeCodecs._

  implicit val ResponseMapInfoCodecJson: CodecJson[ResponseMapInfo] = CodecJson.derive[ResponseMapInfo]
  implicit val ResponseMapInfoDecoder: EntityDecoder[ResponseMapInfo] = jsonOf[ResponseMapInfo]
  implicit val ResponseMapInfoEncoder: EntityEncoder[ResponseMapInfo] = jsonEncoderOf[ResponseMapInfo]
}
