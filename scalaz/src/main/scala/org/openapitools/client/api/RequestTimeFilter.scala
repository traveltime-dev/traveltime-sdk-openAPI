package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import RequestTimeFilter._

case class RequestTimeFilter (
  locations: List[RequestLocation],
departureSearches: Option[List[RequestTimeFilterDepartureSearch]],
arrivalSearches: Option[List[RequestTimeFilterArrivalSearch]])

object RequestTimeFilter {
  import DateTimeCodecs._

  implicit val RequestTimeFilterCodecJson: CodecJson[RequestTimeFilter] = CodecJson.derive[RequestTimeFilter]
  implicit val RequestTimeFilterDecoder: EntityDecoder[RequestTimeFilter] = jsonOf[RequestTimeFilter]
  implicit val RequestTimeFilterEncoder: EntityEncoder[RequestTimeFilter] = jsonEncoderOf[RequestTimeFilter]
}
