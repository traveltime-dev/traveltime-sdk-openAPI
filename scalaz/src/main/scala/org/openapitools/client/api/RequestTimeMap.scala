package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RequestTimeMap._

case class RequestTimeMap (
  departureSearches: Option[List[RequestTimeMapDepartureSearch]],
arrivalSearches: Option[List[RequestTimeMapArrivalSearch]],
unions: Option[List[RequestUnionOnIntersection]],
intersections: Option[List[RequestUnionOnIntersection]])

object RequestTimeMap {
  import DateTimeCodecs._

  implicit val RequestTimeMapCodecJson: CodecJson[RequestTimeMap] = CodecJson.derive[RequestTimeMap]
  implicit val RequestTimeMapDecoder: EntityDecoder[RequestTimeMap] = jsonOf[RequestTimeMap]
  implicit val RequestTimeMapEncoder: EntityEncoder[RequestTimeMap] = jsonEncoderOf[RequestTimeMap]
}
