package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import org.joda.time.DateTime

import RequestTimeFilterArrivalSearch._

case class RequestTimeFilterArrivalSearch (
  id: String,
departureLocationIds: List[String],
arrivalLocationId: String,
transportation: RequestTransportation,
travelTime: Integer,
arrivalTime: DateTime,
properties: List[RequestTimeFilterProperty],
range: Option[RequestRangeFull])

object RequestTimeFilterArrivalSearch {
  import DateTimeCodecs._

  implicit val RequestTimeFilterArrivalSearchCodecJson: CodecJson[RequestTimeFilterArrivalSearch] = CodecJson.derive[RequestTimeFilterArrivalSearch]
  implicit val RequestTimeFilterArrivalSearchDecoder: EntityDecoder[RequestTimeFilterArrivalSearch] = jsonOf[RequestTimeFilterArrivalSearch]
  implicit val RequestTimeFilterArrivalSearchEncoder: EntityEncoder[RequestTimeFilterArrivalSearch] = jsonEncoderOf[RequestTimeFilterArrivalSearch]
}
