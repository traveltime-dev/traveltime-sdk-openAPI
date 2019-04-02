package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseTimeFilterFastProperties._

case class ResponseTimeFilterFastProperties (
  travelTime: Option[Integer],
fares: Option[ResponseFaresFast])

object ResponseTimeFilterFastProperties {
  import DateTimeCodecs._

  implicit val ResponseTimeFilterFastPropertiesCodecJson: CodecJson[ResponseTimeFilterFastProperties] = CodecJson.derive[ResponseTimeFilterFastProperties]
  implicit val ResponseTimeFilterFastPropertiesDecoder: EntityDecoder[ResponseTimeFilterFastProperties] = jsonOf[ResponseTimeFilterFastProperties]
  implicit val ResponseTimeFilterFastPropertiesEncoder: EntityEncoder[ResponseTimeFilterFastProperties] = jsonEncoderOf[ResponseTimeFilterFastProperties]
}
