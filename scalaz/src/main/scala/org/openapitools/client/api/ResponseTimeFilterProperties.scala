package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseTimeFilterProperties._

case class ResponseTimeFilterProperties (
  travelTime: Option[Integer],
distance: Option[Integer],
distanceBreakdown: Option[List[ResponseDistanceBreakdownItem]],
fares: Option[ResponseFares],
route: Option[ResponseRoute])

object ResponseTimeFilterProperties {
  import DateTimeCodecs._

  implicit val ResponseTimeFilterPropertiesCodecJson: CodecJson[ResponseTimeFilterProperties] = CodecJson.derive[ResponseTimeFilterProperties]
  implicit val ResponseTimeFilterPropertiesDecoder: EntityDecoder[ResponseTimeFilterProperties] = jsonOf[ResponseTimeFilterProperties]
  implicit val ResponseTimeFilterPropertiesEncoder: EntityEncoder[ResponseTimeFilterProperties] = jsonEncoderOf[ResponseTimeFilterProperties]
}
