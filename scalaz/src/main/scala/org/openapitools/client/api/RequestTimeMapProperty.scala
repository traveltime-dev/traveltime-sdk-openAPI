package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import RequestTimeMapProperty._

case class RequestTimeMapProperty (
  
object RequestTimeMapProperty {
  import DateTimeCodecs._

  implicit val RequestTimeMapPropertyCodecJson: CodecJson[RequestTimeMapProperty] = CodecJson.derive[RequestTimeMapProperty]
  implicit val RequestTimeMapPropertyDecoder: EntityDecoder[RequestTimeMapProperty] = jsonOf[RequestTimeMapProperty]
  implicit val RequestTimeMapPropertyEncoder: EntityEncoder[RequestTimeMapProperty] = jsonEncoderOf[RequestTimeMapProperty]
}
