package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import RequestRoutesProperty._

case class RequestRoutesProperty (
  
object RequestRoutesProperty {
  import DateTimeCodecs._

  implicit val RequestRoutesPropertyCodecJson: CodecJson[RequestRoutesProperty] = CodecJson.derive[RequestRoutesProperty]
  implicit val RequestRoutesPropertyDecoder: EntityDecoder[RequestRoutesProperty] = jsonOf[RequestRoutesProperty]
  implicit val RequestRoutesPropertyEncoder: EntityEncoder[RequestRoutesProperty] = jsonEncoderOf[RequestRoutesProperty]
}
