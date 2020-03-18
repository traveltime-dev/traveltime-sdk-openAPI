package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RequestTimeFilterFastArrivalManyToOneSearch._

case class RequestTimeFilterFastArrivalManyToOneSearch (
  id: String,
arrivalLocationId: String,
departureLocationIds: List[String],
transportation: RequestTransportationFast,
travelTime: Integer,
arrivalTimePeriod: RequestArrivalTimePeriod,
properties: List[RequestTimeFilterFastProperty])

object RequestTimeFilterFastArrivalManyToOneSearch {
  import DateTimeCodecs._

  implicit val RequestTimeFilterFastArrivalManyToOneSearchCodecJson: CodecJson[RequestTimeFilterFastArrivalManyToOneSearch] = CodecJson.derive[RequestTimeFilterFastArrivalManyToOneSearch]
  implicit val RequestTimeFilterFastArrivalManyToOneSearchDecoder: EntityDecoder[RequestTimeFilterFastArrivalManyToOneSearch] = jsonOf[RequestTimeFilterFastArrivalManyToOneSearch]
  implicit val RequestTimeFilterFastArrivalManyToOneSearchEncoder: EntityEncoder[RequestTimeFilterFastArrivalManyToOneSearch] = jsonEncoderOf[RequestTimeFilterFastArrivalManyToOneSearch]
}
