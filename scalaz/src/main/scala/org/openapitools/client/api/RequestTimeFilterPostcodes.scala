package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RequestTimeFilterPostcodes._

case class RequestTimeFilterPostcodes (
  departureSearches: Option[List[RequestTimeFilterPostcodesDepartureSearch]],
arrivalSearches: Option[List[RequestTimeFilterPostcodesArrivalSearch]])

object RequestTimeFilterPostcodes {
  import DateTimeCodecs._

  implicit val RequestTimeFilterPostcodesCodecJson: CodecJson[RequestTimeFilterPostcodes] = CodecJson.derive[RequestTimeFilterPostcodes]
  implicit val RequestTimeFilterPostcodesDecoder: EntityDecoder[RequestTimeFilterPostcodes] = jsonOf[RequestTimeFilterPostcodes]
  implicit val RequestTimeFilterPostcodesEncoder: EntityEncoder[RequestTimeFilterPostcodes] = jsonEncoderOf[RequestTimeFilterPostcodes]
}
