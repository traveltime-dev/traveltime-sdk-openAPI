package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseTimeFilterPostcodeSectorsResult._

case class ResponseTimeFilterPostcodeSectorsResult (
  searchId: String,
sectors: List[ResponseTimeFilterPostcodeSector])

object ResponseTimeFilterPostcodeSectorsResult {
  import DateTimeCodecs._

  implicit val ResponseTimeFilterPostcodeSectorsResultCodecJson: CodecJson[ResponseTimeFilterPostcodeSectorsResult] = CodecJson.derive[ResponseTimeFilterPostcodeSectorsResult]
  implicit val ResponseTimeFilterPostcodeSectorsResultDecoder: EntityDecoder[ResponseTimeFilterPostcodeSectorsResult] = jsonOf[ResponseTimeFilterPostcodeSectorsResult]
  implicit val ResponseTimeFilterPostcodeSectorsResultEncoder: EntityEncoder[ResponseTimeFilterPostcodeSectorsResult] = jsonEncoderOf[ResponseTimeFilterPostcodeSectorsResult]
}
