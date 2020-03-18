package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseTimeFilterPostcodeDistrictProperties._

case class ResponseTimeFilterPostcodeDistrictProperties (
  travelTimeReachable: Option[ResponseTravelTimeStatistics],
travelTimeAll: Option[ResponseTravelTimeStatistics],
coverage: Option[Double])

object ResponseTimeFilterPostcodeDistrictProperties {
  import DateTimeCodecs._

  implicit val ResponseTimeFilterPostcodeDistrictPropertiesCodecJson: CodecJson[ResponseTimeFilterPostcodeDistrictProperties] = CodecJson.derive[ResponseTimeFilterPostcodeDistrictProperties]
  implicit val ResponseTimeFilterPostcodeDistrictPropertiesDecoder: EntityDecoder[ResponseTimeFilterPostcodeDistrictProperties] = jsonOf[ResponseTimeFilterPostcodeDistrictProperties]
  implicit val ResponseTimeFilterPostcodeDistrictPropertiesEncoder: EntityEncoder[ResponseTimeFilterPostcodeDistrictProperties] = jsonEncoderOf[ResponseTimeFilterPostcodeDistrictProperties]
}
