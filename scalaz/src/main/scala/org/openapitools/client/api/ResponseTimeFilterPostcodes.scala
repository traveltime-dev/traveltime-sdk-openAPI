package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseTimeFilterPostcodes._

case class ResponseTimeFilterPostcodes (
  results: List[ResponseTimeFilterPostcodesResult])

object ResponseTimeFilterPostcodes {
  import DateTimeCodecs._

  implicit val ResponseTimeFilterPostcodesCodecJson: CodecJson[ResponseTimeFilterPostcodes] = CodecJson.derive[ResponseTimeFilterPostcodes]
  implicit val ResponseTimeFilterPostcodesDecoder: EntityDecoder[ResponseTimeFilterPostcodes] = jsonOf[ResponseTimeFilterPostcodes]
  implicit val ResponseTimeFilterPostcodesEncoder: EntityEncoder[ResponseTimeFilterPostcodes] = jsonEncoderOf[ResponseTimeFilterPostcodes]
}
