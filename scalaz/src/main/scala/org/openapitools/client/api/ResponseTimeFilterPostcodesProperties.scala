package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseTimeFilterPostcodesProperties._

case class ResponseTimeFilterPostcodesProperties (
  travelTime: Option[Integer],
distance: Option[Integer])

object ResponseTimeFilterPostcodesProperties {
  import DateTimeCodecs._

  implicit val ResponseTimeFilterPostcodesPropertiesCodecJson: CodecJson[ResponseTimeFilterPostcodesProperties] = CodecJson.derive[ResponseTimeFilterPostcodesProperties]
  implicit val ResponseTimeFilterPostcodesPropertiesDecoder: EntityDecoder[ResponseTimeFilterPostcodesProperties] = jsonOf[ResponseTimeFilterPostcodesProperties]
  implicit val ResponseTimeFilterPostcodesPropertiesEncoder: EntityEncoder[ResponseTimeFilterPostcodesProperties] = jsonEncoderOf[ResponseTimeFilterPostcodesProperties]
}
