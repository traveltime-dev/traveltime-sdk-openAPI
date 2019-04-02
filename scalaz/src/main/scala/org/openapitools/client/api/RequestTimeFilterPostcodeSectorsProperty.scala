package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import RequestTimeFilterPostcodeSectorsProperty._

case class RequestTimeFilterPostcodeSectorsProperty (
  
object RequestTimeFilterPostcodeSectorsProperty {
  import DateTimeCodecs._

  implicit val RequestTimeFilterPostcodeSectorsPropertyCodecJson: CodecJson[RequestTimeFilterPostcodeSectorsProperty] = CodecJson.derive[RequestTimeFilterPostcodeSectorsProperty]
  implicit val RequestTimeFilterPostcodeSectorsPropertyDecoder: EntityDecoder[RequestTimeFilterPostcodeSectorsProperty] = jsonOf[RequestTimeFilterPostcodeSectorsProperty]
  implicit val RequestTimeFilterPostcodeSectorsPropertyEncoder: EntityEncoder[RequestTimeFilterPostcodeSectorsProperty] = jsonEncoderOf[RequestTimeFilterPostcodeSectorsProperty]
}
