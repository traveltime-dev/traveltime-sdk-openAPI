package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import RequestTimeFilterPostcodeDistrictsArrivalSearch._

case class RequestTimeFilterPostcodeDistrictsArrivalSearch (
  id: String,
transportation: RequestTransportation,
travelTime: Integer,
arrivalTime: DateTime,
reachablePostcodesThreshold: Double,
properties: List[RequestTimeFilterPostcodeDistrictsProperty],
range: Option[RequestRangeFull])

object RequestTimeFilterPostcodeDistrictsArrivalSearch {
  import DateTimeCodecs._

  implicit val RequestTimeFilterPostcodeDistrictsArrivalSearchCodecJson: CodecJson[RequestTimeFilterPostcodeDistrictsArrivalSearch] = CodecJson.derive[RequestTimeFilterPostcodeDistrictsArrivalSearch]
  implicit val RequestTimeFilterPostcodeDistrictsArrivalSearchDecoder: EntityDecoder[RequestTimeFilterPostcodeDistrictsArrivalSearch] = jsonOf[RequestTimeFilterPostcodeDistrictsArrivalSearch]
  implicit val RequestTimeFilterPostcodeDistrictsArrivalSearchEncoder: EntityEncoder[RequestTimeFilterPostcodeDistrictsArrivalSearch] = jsonEncoderOf[RequestTimeFilterPostcodeDistrictsArrivalSearch]
}
