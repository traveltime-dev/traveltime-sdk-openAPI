package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseTimeFilterPostcodeDistricts._

case class ResponseTimeFilterPostcodeDistricts (
  results: List[ResponseTimeFilterPostcodeDistrictsResult])

object ResponseTimeFilterPostcodeDistricts {
  import DateTimeCodecs._

  implicit val ResponseTimeFilterPostcodeDistrictsCodecJson: CodecJson[ResponseTimeFilterPostcodeDistricts] = CodecJson.derive[ResponseTimeFilterPostcodeDistricts]
  implicit val ResponseTimeFilterPostcodeDistrictsDecoder: EntityDecoder[ResponseTimeFilterPostcodeDistricts] = jsonOf[ResponseTimeFilterPostcodeDistricts]
  implicit val ResponseTimeFilterPostcodeDistrictsEncoder: EntityEncoder[ResponseTimeFilterPostcodeDistricts] = jsonEncoderOf[ResponseTimeFilterPostcodeDistricts]
}
