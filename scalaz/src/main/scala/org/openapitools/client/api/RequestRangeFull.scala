package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RequestRangeFull._

case class RequestRangeFull (
  enabled: Boolean,
maxResults: Integer,
width: Integer)

object RequestRangeFull {
  import DateTimeCodecs._

  implicit val RequestRangeFullCodecJson: CodecJson[RequestRangeFull] = CodecJson.derive[RequestRangeFull]
  implicit val RequestRangeFullDecoder: EntityDecoder[RequestRangeFull] = jsonOf[RequestRangeFull]
  implicit val RequestRangeFullEncoder: EntityEncoder[RequestRangeFull] = jsonEncoderOf[RequestRangeFull]
}
