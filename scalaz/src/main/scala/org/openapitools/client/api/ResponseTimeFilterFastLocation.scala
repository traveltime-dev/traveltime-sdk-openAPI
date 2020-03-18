package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseTimeFilterFastLocation._

case class ResponseTimeFilterFastLocation (
  id: String,
properties: List[ResponseTimeFilterFastProperties])

object ResponseTimeFilterFastLocation {
  import DateTimeCodecs._

  implicit val ResponseTimeFilterFastLocationCodecJson: CodecJson[ResponseTimeFilterFastLocation] = CodecJson.derive[ResponseTimeFilterFastLocation]
  implicit val ResponseTimeFilterFastLocationDecoder: EntityDecoder[ResponseTimeFilterFastLocation] = jsonOf[ResponseTimeFilterFastLocation]
  implicit val ResponseTimeFilterFastLocationEncoder: EntityEncoder[ResponseTimeFilterFastLocation] = jsonEncoderOf[ResponseTimeFilterFastLocation]
}
