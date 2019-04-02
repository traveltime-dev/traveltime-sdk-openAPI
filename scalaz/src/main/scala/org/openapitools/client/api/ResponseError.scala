package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseError._

case class ResponseError (
  httpStatus: Option[Integer],
errorCode: Option[Integer],
description: Option[String],
documentationLink: Option[String],
additionalInfo: Option[Map[String, List[String]]])

object ResponseError {
  import DateTimeCodecs._

  implicit val ResponseErrorCodecJson: CodecJson[ResponseError] = CodecJson.derive[ResponseError]
  implicit val ResponseErrorDecoder: EntityDecoder[ResponseError] = jsonOf[ResponseError]
  implicit val ResponseErrorEncoder: EntityEncoder[ResponseError] = jsonEncoderOf[ResponseError]
}
