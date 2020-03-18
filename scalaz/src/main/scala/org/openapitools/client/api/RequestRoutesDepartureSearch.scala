package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import org.joda.time.DateTime

import RequestRoutesDepartureSearch._

case class RequestRoutesDepartureSearch (
  id: String,
departureLocationId: String,
arrivalLocationIds: List[String],
transportation: RequestTransportation,
departureTime: DateTime,
properties: List[RequestRoutesProperty],
range: Option[RequestRangeFull])

object RequestRoutesDepartureSearch {
  import DateTimeCodecs._

  implicit val RequestRoutesDepartureSearchCodecJson: CodecJson[RequestRoutesDepartureSearch] = CodecJson.derive[RequestRoutesDepartureSearch]
  implicit val RequestRoutesDepartureSearchDecoder: EntityDecoder[RequestRoutesDepartureSearch] = jsonOf[RequestRoutesDepartureSearch]
  implicit val RequestRoutesDepartureSearchEncoder: EntityEncoder[RequestRoutesDepartureSearch] = jsonEncoderOf[RequestRoutesDepartureSearch]
}
