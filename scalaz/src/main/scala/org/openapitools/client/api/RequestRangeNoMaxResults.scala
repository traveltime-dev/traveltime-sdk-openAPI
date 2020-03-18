package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RequestRangeNoMaxResults._

case class RequestRangeNoMaxResults (
  enabled: Boolean,
width: Integer)

object RequestRangeNoMaxResults {
  import DateTimeCodecs._

  implicit val RequestRangeNoMaxResultsCodecJson: CodecJson[RequestRangeNoMaxResults] = CodecJson.derive[RequestRangeNoMaxResults]
  implicit val RequestRangeNoMaxResultsDecoder: EntityDecoder[RequestRangeNoMaxResults] = jsonOf[RequestRangeNoMaxResults]
  implicit val RequestRangeNoMaxResultsEncoder: EntityEncoder[RequestRangeNoMaxResults] = jsonEncoderOf[RequestRangeNoMaxResults]
}
