package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import RequestTimeFilterProperty._

case class RequestTimeFilterProperty (
  
object RequestTimeFilterProperty {
  import DateTimeCodecs._

  implicit val RequestTimeFilterPropertyCodecJson: CodecJson[RequestTimeFilterProperty] = CodecJson.derive[RequestTimeFilterProperty]
  implicit val RequestTimeFilterPropertyDecoder: EntityDecoder[RequestTimeFilterProperty] = jsonOf[RequestTimeFilterProperty]
  implicit val RequestTimeFilterPropertyEncoder: EntityEncoder[RequestTimeFilterProperty] = jsonEncoderOf[RequestTimeFilterProperty]
}
