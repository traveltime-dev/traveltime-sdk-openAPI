package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseTimeFilterResult._

case class ResponseTimeFilterResult (
  searchId: String,
locations: List[ResponseTimeFilterLocation],
unreachable: List[String])

object ResponseTimeFilterResult {
  import DateTimeCodecs._

  implicit val ResponseTimeFilterResultCodecJson: CodecJson[ResponseTimeFilterResult] = CodecJson.derive[ResponseTimeFilterResult]
  implicit val ResponseTimeFilterResultDecoder: EntityDecoder[ResponseTimeFilterResult] = jsonOf[ResponseTimeFilterResult]
  implicit val ResponseTimeFilterResultEncoder: EntityEncoder[ResponseTimeFilterResult] = jsonEncoderOf[ResponseTimeFilterResult]
}
