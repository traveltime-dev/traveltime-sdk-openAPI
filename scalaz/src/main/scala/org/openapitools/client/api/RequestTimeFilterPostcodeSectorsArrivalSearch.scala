package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import org.joda.time.DateTime

import RequestTimeFilterPostcodeSectorsArrivalSearch._

case class RequestTimeFilterPostcodeSectorsArrivalSearch (
  id: String,
transportation: RequestTransportation,
travelTime: Integer,
arrivalTime: DateTime,
reachablePostcodesThreshold: Double,
properties: List[RequestTimeFilterPostcodeSectorsProperty],
range: Option[RequestRangeFull])

object RequestTimeFilterPostcodeSectorsArrivalSearch {
  import DateTimeCodecs._

  implicit val RequestTimeFilterPostcodeSectorsArrivalSearchCodecJson: CodecJson[RequestTimeFilterPostcodeSectorsArrivalSearch] = CodecJson.derive[RequestTimeFilterPostcodeSectorsArrivalSearch]
  implicit val RequestTimeFilterPostcodeSectorsArrivalSearchDecoder: EntityDecoder[RequestTimeFilterPostcodeSectorsArrivalSearch] = jsonOf[RequestTimeFilterPostcodeSectorsArrivalSearch]
  implicit val RequestTimeFilterPostcodeSectorsArrivalSearchEncoder: EntityEncoder[RequestTimeFilterPostcodeSectorsArrivalSearch] = jsonEncoderOf[RequestTimeFilterPostcodeSectorsArrivalSearch]
}
