package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RequestTimeFilterPostcodeDistricts._

case class RequestTimeFilterPostcodeDistricts (
  departureSearches: Option[List[RequestTimeFilterPostcodeDistrictsDepartureSearch]],
arrivalSearches: Option[List[RequestTimeFilterPostcodeDistrictsArrivalSearch]])

object RequestTimeFilterPostcodeDistricts {
  import DateTimeCodecs._

  implicit val RequestTimeFilterPostcodeDistrictsCodecJson: CodecJson[RequestTimeFilterPostcodeDistricts] = CodecJson.derive[RequestTimeFilterPostcodeDistricts]
  implicit val RequestTimeFilterPostcodeDistrictsDecoder: EntityDecoder[RequestTimeFilterPostcodeDistricts] = jsonOf[RequestTimeFilterPostcodeDistricts]
  implicit val RequestTimeFilterPostcodeDistrictsEncoder: EntityEncoder[RequestTimeFilterPostcodeDistricts] = jsonEncoderOf[RequestTimeFilterPostcodeDistricts]
}
