package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RequestTimeFilterPostcodeSectors._

case class RequestTimeFilterPostcodeSectors (
  departureSearches: Option[List[RequestTimeFilterPostcodeSectorsDepartureSearch]],
arrivalSearches: Option[List[RequestTimeFilterPostcodeSectorsArrivalSearch]])

object RequestTimeFilterPostcodeSectors {
  import DateTimeCodecs._

  implicit val RequestTimeFilterPostcodeSectorsCodecJson: CodecJson[RequestTimeFilterPostcodeSectors] = CodecJson.derive[RequestTimeFilterPostcodeSectors]
  implicit val RequestTimeFilterPostcodeSectorsDecoder: EntityDecoder[RequestTimeFilterPostcodeSectors] = jsonOf[RequestTimeFilterPostcodeSectors]
  implicit val RequestTimeFilterPostcodeSectorsEncoder: EntityEncoder[RequestTimeFilterPostcodeSectors] = jsonEncoderOf[RequestTimeFilterPostcodeSectors]
}
