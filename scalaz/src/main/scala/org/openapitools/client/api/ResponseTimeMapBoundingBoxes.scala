package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseTimeMapBoundingBoxes._

case class ResponseTimeMapBoundingBoxes (
  results: List[ResponseTimeMapBoundingBoxesResult])

object ResponseTimeMapBoundingBoxes {
  import DateTimeCodecs._

  implicit val ResponseTimeMapBoundingBoxesCodecJson: CodecJson[ResponseTimeMapBoundingBoxes] = CodecJson.derive[ResponseTimeMapBoundingBoxes]
  implicit val ResponseTimeMapBoundingBoxesDecoder: EntityDecoder[ResponseTimeMapBoundingBoxes] = jsonOf[ResponseTimeMapBoundingBoxes]
  implicit val ResponseTimeMapBoundingBoxesEncoder: EntityEncoder[ResponseTimeMapBoundingBoxes] = jsonEncoderOf[ResponseTimeMapBoundingBoxes]
}
