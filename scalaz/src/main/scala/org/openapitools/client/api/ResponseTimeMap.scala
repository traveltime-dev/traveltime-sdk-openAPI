package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseTimeMap._

case class ResponseTimeMap (
  results: List[ResponseTimeMapResult])

object ResponseTimeMap {
  import DateTimeCodecs._

  implicit val ResponseTimeMapCodecJson: CodecJson[ResponseTimeMap] = CodecJson.derive[ResponseTimeMap]
  implicit val ResponseTimeMapDecoder: EntityDecoder[ResponseTimeMap] = jsonOf[ResponseTimeMap]
  implicit val ResponseTimeMapEncoder: EntityEncoder[ResponseTimeMap] = jsonEncoderOf[ResponseTimeMap]
}
