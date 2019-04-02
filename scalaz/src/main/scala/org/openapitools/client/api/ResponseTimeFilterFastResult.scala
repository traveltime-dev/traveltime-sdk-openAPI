package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseTimeFilterFastResult._

case class ResponseTimeFilterFastResult (
  searchId: String,
locations: List[ResponseTimeFilterFastLocation],
unreachable: List[String])

object ResponseTimeFilterFastResult {
  import DateTimeCodecs._

  implicit val ResponseTimeFilterFastResultCodecJson: CodecJson[ResponseTimeFilterFastResult] = CodecJson.derive[ResponseTimeFilterFastResult]
  implicit val ResponseTimeFilterFastResultDecoder: EntityDecoder[ResponseTimeFilterFastResult] = jsonOf[ResponseTimeFilterFastResult]
  implicit val ResponseTimeFilterFastResultEncoder: EntityEncoder[ResponseTimeFilterFastResult] = jsonEncoderOf[ResponseTimeFilterFastResult]
}
