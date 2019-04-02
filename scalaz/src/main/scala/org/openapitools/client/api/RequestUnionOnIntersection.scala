package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import RequestUnionOnIntersection._

case class RequestUnionOnIntersection (
  id: String,
searchIds: List[String])

object RequestUnionOnIntersection {
  import DateTimeCodecs._

  implicit val RequestUnionOnIntersectionCodecJson: CodecJson[RequestUnionOnIntersection] = CodecJson.derive[RequestUnionOnIntersection]
  implicit val RequestUnionOnIntersectionDecoder: EntityDecoder[RequestUnionOnIntersection] = jsonOf[RequestUnionOnIntersection]
  implicit val RequestUnionOnIntersectionEncoder: EntityEncoder[RequestUnionOnIntersection] = jsonEncoderOf[RequestUnionOnIntersection]
}
