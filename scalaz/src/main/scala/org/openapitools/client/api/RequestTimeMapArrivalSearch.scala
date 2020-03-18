package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import RequestTimeMapArrivalSearch._

case class RequestTimeMapArrivalSearch (
  id: String,
coords: Coords,
transportation: RequestTransportation,
travelTime: Integer,
arrivalTime: OffsetDateTime,
properties: Option[List[RequestTimeMapProperty]],
range: Option[RequestRangeNoMaxResults])

object RequestTimeMapArrivalSearch {
  import DateTimeCodecs._

  implicit val RequestTimeMapArrivalSearchCodecJson: CodecJson[RequestTimeMapArrivalSearch] = CodecJson.derive[RequestTimeMapArrivalSearch]
  implicit val RequestTimeMapArrivalSearchDecoder: EntityDecoder[RequestTimeMapArrivalSearch] = jsonOf[RequestTimeMapArrivalSearch]
  implicit val RequestTimeMapArrivalSearchEncoder: EntityEncoder[RequestTimeMapArrivalSearch] = jsonEncoderOf[RequestTimeMapArrivalSearch]
}
