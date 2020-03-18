package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseTimeFilterPostcodesResult._

case class ResponseTimeFilterPostcodesResult (
  searchId: String,
postcodes: List[ResponseTimeFilterPostcode])

object ResponseTimeFilterPostcodesResult {
  import DateTimeCodecs._

  implicit val ResponseTimeFilterPostcodesResultCodecJson: CodecJson[ResponseTimeFilterPostcodesResult] = CodecJson.derive[ResponseTimeFilterPostcodesResult]
  implicit val ResponseTimeFilterPostcodesResultDecoder: EntityDecoder[ResponseTimeFilterPostcodesResult] = jsonOf[ResponseTimeFilterPostcodesResult]
  implicit val ResponseTimeFilterPostcodesResultEncoder: EntityEncoder[ResponseTimeFilterPostcodesResult] = jsonEncoderOf[ResponseTimeFilterPostcodesResult]
}
