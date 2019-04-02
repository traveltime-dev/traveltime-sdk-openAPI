package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseTimeMapWkt._

case class ResponseTimeMapWkt (
  results: List[ResponseTimeMapWktResult])

object ResponseTimeMapWkt {
  import DateTimeCodecs._

  implicit val ResponseTimeMapWktCodecJson: CodecJson[ResponseTimeMapWkt] = CodecJson.derive[ResponseTimeMapWkt]
  implicit val ResponseTimeMapWktDecoder: EntityDecoder[ResponseTimeMapWkt] = jsonOf[ResponseTimeMapWkt]
  implicit val ResponseTimeMapWktEncoder: EntityEncoder[ResponseTimeMapWkt] = jsonEncoderOf[ResponseTimeMapWkt]
}
