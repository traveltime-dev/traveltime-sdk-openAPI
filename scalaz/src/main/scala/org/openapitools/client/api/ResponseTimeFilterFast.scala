package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseTimeFilterFast._

case class ResponseTimeFilterFast (
  results: List[ResponseTimeFilterFastResult])

object ResponseTimeFilterFast {
  import DateTimeCodecs._

  implicit val ResponseTimeFilterFastCodecJson: CodecJson[ResponseTimeFilterFast] = CodecJson.derive[ResponseTimeFilterFast]
  implicit val ResponseTimeFilterFastDecoder: EntityDecoder[ResponseTimeFilterFast] = jsonOf[ResponseTimeFilterFast]
  implicit val ResponseTimeFilterFastEncoder: EntityEncoder[ResponseTimeFilterFast] = jsonEncoderOf[ResponseTimeFilterFast]
}
