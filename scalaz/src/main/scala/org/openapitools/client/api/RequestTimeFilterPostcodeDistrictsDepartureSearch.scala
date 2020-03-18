package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import org.joda.time.DateTime

import RequestTimeFilterPostcodeDistrictsDepartureSearch._

case class RequestTimeFilterPostcodeDistrictsDepartureSearch (
  id: String,
transportation: RequestTransportation,
travelTime: Integer,
departureTime: DateTime,
reachablePostcodesThreshold: Double,
properties: List[RequestTimeFilterPostcodeDistrictsProperty],
range: Option[RequestRangeFull])

object RequestTimeFilterPostcodeDistrictsDepartureSearch {
  import DateTimeCodecs._

  implicit val RequestTimeFilterPostcodeDistrictsDepartureSearchCodecJson: CodecJson[RequestTimeFilterPostcodeDistrictsDepartureSearch] = CodecJson.derive[RequestTimeFilterPostcodeDistrictsDepartureSearch]
  implicit val RequestTimeFilterPostcodeDistrictsDepartureSearchDecoder: EntityDecoder[RequestTimeFilterPostcodeDistrictsDepartureSearch] = jsonOf[RequestTimeFilterPostcodeDistrictsDepartureSearch]
  implicit val RequestTimeFilterPostcodeDistrictsDepartureSearchEncoder: EntityEncoder[RequestTimeFilterPostcodeDistrictsDepartureSearch] = jsonEncoderOf[RequestTimeFilterPostcodeDistrictsDepartureSearch]
}
