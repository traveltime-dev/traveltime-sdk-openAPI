package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseTimeFilterPostcodeDistrictsResult._

case class ResponseTimeFilterPostcodeDistrictsResult (
  searchId: String,
districts: List[ResponseTimeFilterPostcodeDistrict])

object ResponseTimeFilterPostcodeDistrictsResult {
  import DateTimeCodecs._

  implicit val ResponseTimeFilterPostcodeDistrictsResultCodecJson: CodecJson[ResponseTimeFilterPostcodeDistrictsResult] = CodecJson.derive[ResponseTimeFilterPostcodeDistrictsResult]
  implicit val ResponseTimeFilterPostcodeDistrictsResultDecoder: EntityDecoder[ResponseTimeFilterPostcodeDistrictsResult] = jsonOf[ResponseTimeFilterPostcodeDistrictsResult]
  implicit val ResponseTimeFilterPostcodeDistrictsResultEncoder: EntityEncoder[ResponseTimeFilterPostcodeDistrictsResult] = jsonEncoderOf[ResponseTimeFilterPostcodeDistrictsResult]
}
