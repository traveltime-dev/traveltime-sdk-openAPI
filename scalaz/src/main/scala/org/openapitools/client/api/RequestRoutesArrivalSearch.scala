package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import org.joda.time.DateTime

import RequestRoutesArrivalSearch._

case class RequestRoutesArrivalSearch (
  id: String,
departureLocationIds: List[String],
arrivalLocationId: String,
transportation: RequestTransportation,
arrivalTime: DateTime,
properties: List[RequestRoutesProperty],
range: Option[RequestRangeFull])

object RequestRoutesArrivalSearch {
  import DateTimeCodecs._

  implicit val RequestRoutesArrivalSearchCodecJson: CodecJson[RequestRoutesArrivalSearch] = CodecJson.derive[RequestRoutesArrivalSearch]
  implicit val RequestRoutesArrivalSearchDecoder: EntityDecoder[RequestRoutesArrivalSearch] = jsonOf[RequestRoutesArrivalSearch]
  implicit val RequestRoutesArrivalSearchEncoder: EntityEncoder[RequestRoutesArrivalSearch] = jsonEncoderOf[RequestRoutesArrivalSearch]
}
