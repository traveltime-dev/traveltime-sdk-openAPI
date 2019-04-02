package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseShape._

case class ResponseShape (
  shell: List[Coords],
holes: List[List[Coords]])

object ResponseShape {
  import DateTimeCodecs._

  implicit val ResponseShapeCodecJson: CodecJson[ResponseShape] = CodecJson.derive[ResponseShape]
  implicit val ResponseShapeDecoder: EntityDecoder[ResponseShape] = jsonOf[ResponseShape]
  implicit val ResponseShapeEncoder: EntityEncoder[ResponseShape] = jsonEncoderOf[ResponseShape]
}
