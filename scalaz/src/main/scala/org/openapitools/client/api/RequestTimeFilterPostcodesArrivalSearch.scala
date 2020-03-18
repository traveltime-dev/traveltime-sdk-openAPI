package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import RequestTimeFilterPostcodesArrivalSearch._

case class RequestTimeFilterPostcodesArrivalSearch (
  id: String,
transportation: RequestTransportation,
travelTime: Integer,
arrivalTime: OffsetDateTime,
properties: List[RequestTimeFilterPostcodesProperty],
range: Option[RequestRangeFull])

object RequestTimeFilterPostcodesArrivalSearch {
  import DateTimeCodecs._

  implicit val RequestTimeFilterPostcodesArrivalSearchCodecJson: CodecJson[RequestTimeFilterPostcodesArrivalSearch] = CodecJson.derive[RequestTimeFilterPostcodesArrivalSearch]
  implicit val RequestTimeFilterPostcodesArrivalSearchDecoder: EntityDecoder[RequestTimeFilterPostcodesArrivalSearch] = jsonOf[RequestTimeFilterPostcodesArrivalSearch]
  implicit val RequestTimeFilterPostcodesArrivalSearchEncoder: EntityEncoder[RequestTimeFilterPostcodesArrivalSearch] = jsonEncoderOf[RequestTimeFilterPostcodesArrivalSearch]
}
