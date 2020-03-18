package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import org.joda.time.DateTime

import RequestTimeFilterPostcodeSectorsDepartureSearch._

case class RequestTimeFilterPostcodeSectorsDepartureSearch (
  id: String,
transportation: RequestTransportation,
travelTime: Integer,
departureTime: DateTime,
reachablePostcodesThreshold: Double,
properties: List[RequestTimeFilterPostcodeSectorsProperty],
range: Option[RequestRangeFull])

object RequestTimeFilterPostcodeSectorsDepartureSearch {
  import DateTimeCodecs._

  implicit val RequestTimeFilterPostcodeSectorsDepartureSearchCodecJson: CodecJson[RequestTimeFilterPostcodeSectorsDepartureSearch] = CodecJson.derive[RequestTimeFilterPostcodeSectorsDepartureSearch]
  implicit val RequestTimeFilterPostcodeSectorsDepartureSearchDecoder: EntityDecoder[RequestTimeFilterPostcodeSectorsDepartureSearch] = jsonOf[RequestTimeFilterPostcodeSectorsDepartureSearch]
  implicit val RequestTimeFilterPostcodeSectorsDepartureSearchEncoder: EntityEncoder[RequestTimeFilterPostcodeSectorsDepartureSearch] = jsonEncoderOf[RequestTimeFilterPostcodeSectorsDepartureSearch]
}
