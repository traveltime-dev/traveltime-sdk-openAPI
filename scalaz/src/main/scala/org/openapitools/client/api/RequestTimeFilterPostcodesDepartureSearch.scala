package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import org.joda.time.DateTime

import RequestTimeFilterPostcodesDepartureSearch._

case class RequestTimeFilterPostcodesDepartureSearch (
  id: String,
transportation: RequestTransportation,
travelTime: Integer,
departureTime: DateTime,
properties: List[RequestTimeFilterPostcodesProperty],
range: Option[RequestRangeFull])

object RequestTimeFilterPostcodesDepartureSearch {
  import DateTimeCodecs._

  implicit val RequestTimeFilterPostcodesDepartureSearchCodecJson: CodecJson[RequestTimeFilterPostcodesDepartureSearch] = CodecJson.derive[RequestTimeFilterPostcodesDepartureSearch]
  implicit val RequestTimeFilterPostcodesDepartureSearchDecoder: EntityDecoder[RequestTimeFilterPostcodesDepartureSearch] = jsonOf[RequestTimeFilterPostcodesDepartureSearch]
  implicit val RequestTimeFilterPostcodesDepartureSearchEncoder: EntityEncoder[RequestTimeFilterPostcodesDepartureSearch] = jsonEncoderOf[RequestTimeFilterPostcodesDepartureSearch]
}
