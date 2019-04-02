package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import RequestTimeFilterPostcodesProperty._

case class RequestTimeFilterPostcodesProperty (
  
object RequestTimeFilterPostcodesProperty {
  import DateTimeCodecs._

  implicit val RequestTimeFilterPostcodesPropertyCodecJson: CodecJson[RequestTimeFilterPostcodesProperty] = CodecJson.derive[RequestTimeFilterPostcodesProperty]
  implicit val RequestTimeFilterPostcodesPropertyDecoder: EntityDecoder[RequestTimeFilterPostcodesProperty] = jsonOf[RequestTimeFilterPostcodesProperty]
  implicit val RequestTimeFilterPostcodesPropertyEncoder: EntityEncoder[RequestTimeFilterPostcodesProperty] = jsonEncoderOf[RequestTimeFilterPostcodesProperty]
}
