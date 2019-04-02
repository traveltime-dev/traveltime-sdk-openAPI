package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import RequestTimeFilterFastProperty._

case class RequestTimeFilterFastProperty (
  
object RequestTimeFilterFastProperty {
  import DateTimeCodecs._

  implicit val RequestTimeFilterFastPropertyCodecJson: CodecJson[RequestTimeFilterFastProperty] = CodecJson.derive[RequestTimeFilterFastProperty]
  implicit val RequestTimeFilterFastPropertyDecoder: EntityDecoder[RequestTimeFilterFastProperty] = jsonOf[RequestTimeFilterFastProperty]
  implicit val RequestTimeFilterFastPropertyEncoder: EntityEncoder[RequestTimeFilterFastProperty] = jsonEncoderOf[RequestTimeFilterFastProperty]
}
