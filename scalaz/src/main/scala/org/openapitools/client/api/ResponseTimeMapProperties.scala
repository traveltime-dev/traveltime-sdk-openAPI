package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseTimeMapProperties._

case class ResponseTimeMapProperties (
  isOnlyWalking: Option[Boolean])

object ResponseTimeMapProperties {
  import DateTimeCodecs._

  implicit val ResponseTimeMapPropertiesCodecJson: CodecJson[ResponseTimeMapProperties] = CodecJson.derive[ResponseTimeMapProperties]
  implicit val ResponseTimeMapPropertiesDecoder: EntityDecoder[ResponseTimeMapProperties] = jsonOf[ResponseTimeMapProperties]
  implicit val ResponseTimeMapPropertiesEncoder: EntityEncoder[ResponseTimeMapProperties] = jsonEncoderOf[ResponseTimeMapProperties]
}
