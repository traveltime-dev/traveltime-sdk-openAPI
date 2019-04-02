package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import RequestTimeMapDepartureSearch._

case class RequestTimeMapDepartureSearch (
  id: String,
coords: Coords,
transportation: RequestTransportation,
travelTime: Integer,
departureTime: DateTime,
properties: Option[List[RequestTimeMapProperty]],
range: Option[RequestRangeNoMaxResults])

object RequestTimeMapDepartureSearch {
  import DateTimeCodecs._

  implicit val RequestTimeMapDepartureSearchCodecJson: CodecJson[RequestTimeMapDepartureSearch] = CodecJson.derive[RequestTimeMapDepartureSearch]
  implicit val RequestTimeMapDepartureSearchDecoder: EntityDecoder[RequestTimeMapDepartureSearch] = jsonOf[RequestTimeMapDepartureSearch]
  implicit val RequestTimeMapDepartureSearchEncoder: EntityEncoder[RequestTimeMapDepartureSearch] = jsonEncoderOf[RequestTimeMapDepartureSearch]
}
