package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseTimeMapBoundingBoxesResult._

case class ResponseTimeMapBoundingBoxesResult (
  searchId: String,
boundingBoxes: List[ResponseBoundingBox],
properties: ResponseTimeMapProperties)

object ResponseTimeMapBoundingBoxesResult {
  import DateTimeCodecs._

  implicit val ResponseTimeMapBoundingBoxesResultCodecJson: CodecJson[ResponseTimeMapBoundingBoxesResult] = CodecJson.derive[ResponseTimeMapBoundingBoxesResult]
  implicit val ResponseTimeMapBoundingBoxesResultDecoder: EntityDecoder[ResponseTimeMapBoundingBoxesResult] = jsonOf[ResponseTimeMapBoundingBoxesResult]
  implicit val ResponseTimeMapBoundingBoxesResultEncoder: EntityEncoder[ResponseTimeMapBoundingBoxesResult] = jsonEncoderOf[ResponseTimeMapBoundingBoxesResult]
}
