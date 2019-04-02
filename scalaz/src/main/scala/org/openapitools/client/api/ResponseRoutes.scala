package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseRoutes._

case class ResponseRoutes (
  results: List[ResponseRoutesResult])

object ResponseRoutes {
  import DateTimeCodecs._

  implicit val ResponseRoutesCodecJson: CodecJson[ResponseRoutes] = CodecJson.derive[ResponseRoutes]
  implicit val ResponseRoutesDecoder: EntityDecoder[ResponseRoutes] = jsonOf[ResponseRoutes]
  implicit val ResponseRoutesEncoder: EntityEncoder[ResponseRoutes] = jsonEncoderOf[ResponseRoutes]
}
