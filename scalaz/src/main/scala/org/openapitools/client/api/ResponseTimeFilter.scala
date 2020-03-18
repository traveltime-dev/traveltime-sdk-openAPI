package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseTimeFilter._

case class ResponseTimeFilter (
  results: List[ResponseTimeFilterResult])

object ResponseTimeFilter {
  import DateTimeCodecs._

  implicit val ResponseTimeFilterCodecJson: CodecJson[ResponseTimeFilter] = CodecJson.derive[ResponseTimeFilter]
  implicit val ResponseTimeFilterDecoder: EntityDecoder[ResponseTimeFilter] = jsonOf[ResponseTimeFilter]
  implicit val ResponseTimeFilterEncoder: EntityEncoder[ResponseTimeFilter] = jsonEncoderOf[ResponseTimeFilter]
}
