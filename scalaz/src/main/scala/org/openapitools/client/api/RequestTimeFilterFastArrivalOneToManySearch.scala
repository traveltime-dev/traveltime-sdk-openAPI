package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RequestTimeFilterFastArrivalOneToManySearch._

case class RequestTimeFilterFastArrivalOneToManySearch (
  id: String,
departureLocationId: String,
arrivalLocationIds: List[String],
transportation: RequestTransportationFast,
travelTime: Integer,
arrivalTimePeriod: RequestArrivalTimePeriod,
properties: List[RequestTimeFilterFastProperty])

object RequestTimeFilterFastArrivalOneToManySearch {
  import DateTimeCodecs._

  implicit val RequestTimeFilterFastArrivalOneToManySearchCodecJson: CodecJson[RequestTimeFilterFastArrivalOneToManySearch] = CodecJson.derive[RequestTimeFilterFastArrivalOneToManySearch]
  implicit val RequestTimeFilterFastArrivalOneToManySearchDecoder: EntityDecoder[RequestTimeFilterFastArrivalOneToManySearch] = jsonOf[RequestTimeFilterFastArrivalOneToManySearch]
  implicit val RequestTimeFilterFastArrivalOneToManySearchEncoder: EntityEncoder[RequestTimeFilterFastArrivalOneToManySearch] = jsonEncoderOf[RequestTimeFilterFastArrivalOneToManySearch]
}
