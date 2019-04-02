package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import RequestRoutes._

case class RequestRoutes (
  locations: List[RequestLocation],
departureSearches: Option[List[RequestRoutesDepartureSearch]],
arrivalSearches: Option[List[RequestRoutesArrivalSearch]])

object RequestRoutes {
  import DateTimeCodecs._

  implicit val RequestRoutesCodecJson: CodecJson[RequestRoutes] = CodecJson.derive[RequestRoutes]
  implicit val RequestRoutesDecoder: EntityDecoder[RequestRoutes] = jsonOf[RequestRoutes]
  implicit val RequestRoutesEncoder: EntityEncoder[RequestRoutes] = jsonEncoderOf[RequestRoutes]
}
