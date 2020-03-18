package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RequestArrivalTimePeriod._

case class RequestArrivalTimePeriod (
  
object RequestArrivalTimePeriod {
  import DateTimeCodecs._

  implicit val RequestArrivalTimePeriodCodecJson: CodecJson[RequestArrivalTimePeriod] = CodecJson.derive[RequestArrivalTimePeriod]
  implicit val RequestArrivalTimePeriodDecoder: EntityDecoder[RequestArrivalTimePeriod] = jsonOf[RequestArrivalTimePeriod]
  implicit val RequestArrivalTimePeriodEncoder: EntityEncoder[RequestArrivalTimePeriod] = jsonEncoderOf[RequestArrivalTimePeriod]
}
