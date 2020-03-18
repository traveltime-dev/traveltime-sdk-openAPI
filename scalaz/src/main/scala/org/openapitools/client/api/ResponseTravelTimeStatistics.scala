package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseTravelTimeStatistics._

case class ResponseTravelTimeStatistics (
  min: Integer,
max: Integer,
mean: Integer,
median: Integer)

object ResponseTravelTimeStatistics {
  import DateTimeCodecs._

  implicit val ResponseTravelTimeStatisticsCodecJson: CodecJson[ResponseTravelTimeStatistics] = CodecJson.derive[ResponseTravelTimeStatistics]
  implicit val ResponseTravelTimeStatisticsDecoder: EntityDecoder[ResponseTravelTimeStatistics] = jsonOf[ResponseTravelTimeStatistics]
  implicit val ResponseTravelTimeStatisticsEncoder: EntityEncoder[ResponseTravelTimeStatistics] = jsonEncoderOf[ResponseTravelTimeStatistics]
}
