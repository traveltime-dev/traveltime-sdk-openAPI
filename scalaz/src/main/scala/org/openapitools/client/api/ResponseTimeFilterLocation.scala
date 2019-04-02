package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseTimeFilterLocation._

case class ResponseTimeFilterLocation (
  id: String,
properties: List[ResponseTimeFilterProperties])

object ResponseTimeFilterLocation {
  import DateTimeCodecs._

  implicit val ResponseTimeFilterLocationCodecJson: CodecJson[ResponseTimeFilterLocation] = CodecJson.derive[ResponseTimeFilterLocation]
  implicit val ResponseTimeFilterLocationDecoder: EntityDecoder[ResponseTimeFilterLocation] = jsonOf[ResponseTimeFilterLocation]
  implicit val ResponseTimeFilterLocationEncoder: EntityEncoder[ResponseTimeFilterLocation] = jsonEncoderOf[ResponseTimeFilterLocation]
}
