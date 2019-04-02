package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseBoundingBox._

case class ResponseBoundingBox (
  envelope: ResponseBox,
boxes: List[ResponseBox])

object ResponseBoundingBox {
  import DateTimeCodecs._

  implicit val ResponseBoundingBoxCodecJson: CodecJson[ResponseBoundingBox] = CodecJson.derive[ResponseBoundingBox]
  implicit val ResponseBoundingBoxDecoder: EntityDecoder[ResponseBoundingBox] = jsonOf[ResponseBoundingBox]
  implicit val ResponseBoundingBoxEncoder: EntityEncoder[ResponseBoundingBox] = jsonEncoderOf[ResponseBoundingBox]
}
