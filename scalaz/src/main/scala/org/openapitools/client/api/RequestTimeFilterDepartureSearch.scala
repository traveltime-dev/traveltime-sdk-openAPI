package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import RequestTimeFilterDepartureSearch._

case class RequestTimeFilterDepartureSearch (
  id: String,
departureLocationId: String,
arrivalLocationIds: List[String],
transportation: RequestTransportation,
travelTime: Integer,
departureTime: OffsetDateTime,
properties: List[RequestTimeFilterProperty],
range: Option[RequestRangeFull])

object RequestTimeFilterDepartureSearch {
  import DateTimeCodecs._

  implicit val RequestTimeFilterDepartureSearchCodecJson: CodecJson[RequestTimeFilterDepartureSearch] = CodecJson.derive[RequestTimeFilterDepartureSearch]
  implicit val RequestTimeFilterDepartureSearchDecoder: EntityDecoder[RequestTimeFilterDepartureSearch] = jsonOf[RequestTimeFilterDepartureSearch]
  implicit val RequestTimeFilterDepartureSearchEncoder: EntityEncoder[RequestTimeFilterDepartureSearch] = jsonEncoderOf[RequestTimeFilterDepartureSearch]
}
