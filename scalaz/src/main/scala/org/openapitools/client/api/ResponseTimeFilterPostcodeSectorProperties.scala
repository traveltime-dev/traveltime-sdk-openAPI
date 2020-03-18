package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseTimeFilterPostcodeSectorProperties._

case class ResponseTimeFilterPostcodeSectorProperties (
  travelTimeReachable: Option[ResponseTravelTimeStatistics],
travelTimeAll: Option[ResponseTravelTimeStatistics],
coverage: Option[Double])

object ResponseTimeFilterPostcodeSectorProperties {
  import DateTimeCodecs._

  implicit val ResponseTimeFilterPostcodeSectorPropertiesCodecJson: CodecJson[ResponseTimeFilterPostcodeSectorProperties] = CodecJson.derive[ResponseTimeFilterPostcodeSectorProperties]
  implicit val ResponseTimeFilterPostcodeSectorPropertiesDecoder: EntityDecoder[ResponseTimeFilterPostcodeSectorProperties] = jsonOf[ResponseTimeFilterPostcodeSectorProperties]
  implicit val ResponseTimeFilterPostcodeSectorPropertiesEncoder: EntityEncoder[ResponseTimeFilterPostcodeSectorProperties] = jsonEncoderOf[ResponseTimeFilterPostcodeSectorProperties]
}
