package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseTimeMapResult._

case class ResponseTimeMapResult (
  searchId: String,
shapes: List[ResponseShape],
properties: ResponseTimeMapProperties)

object ResponseTimeMapResult {
  import DateTimeCodecs._

  implicit val ResponseTimeMapResultCodecJson: CodecJson[ResponseTimeMapResult] = CodecJson.derive[ResponseTimeMapResult]
  implicit val ResponseTimeMapResultDecoder: EntityDecoder[ResponseTimeMapResult] = jsonOf[ResponseTimeMapResult]
  implicit val ResponseTimeMapResultEncoder: EntityEncoder[ResponseTimeMapResult] = jsonEncoderOf[ResponseTimeMapResult]
}
