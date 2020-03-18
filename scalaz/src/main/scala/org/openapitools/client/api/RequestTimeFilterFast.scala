package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RequestTimeFilterFast._

case class RequestTimeFilterFast (
  locations: List[RequestLocation],
arrivalSearches: RequestTimeFilterFastArrivalSearches)

object RequestTimeFilterFast {
  import DateTimeCodecs._

  implicit val RequestTimeFilterFastCodecJson: CodecJson[RequestTimeFilterFast] = CodecJson.derive[RequestTimeFilterFast]
  implicit val RequestTimeFilterFastDecoder: EntityDecoder[RequestTimeFilterFast] = jsonOf[RequestTimeFilterFast]
  implicit val RequestTimeFilterFastEncoder: EntityEncoder[RequestTimeFilterFast] = jsonEncoderOf[RequestTimeFilterFast]
}
