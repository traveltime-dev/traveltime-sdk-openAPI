package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseTimeMapWktResult._

case class ResponseTimeMapWktResult (
  searchId: String,
shape: String,
properties: ResponseTimeMapProperties)

object ResponseTimeMapWktResult {
  import DateTimeCodecs._

  implicit val ResponseTimeMapWktResultCodecJson: CodecJson[ResponseTimeMapWktResult] = CodecJson.derive[ResponseTimeMapWktResult]
  implicit val ResponseTimeMapWktResultDecoder: EntityDecoder[ResponseTimeMapWktResult] = jsonOf[ResponseTimeMapWktResult]
  implicit val ResponseTimeMapWktResultEncoder: EntityEncoder[ResponseTimeMapWktResult] = jsonEncoderOf[ResponseTimeMapWktResult]
}
