package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseRoutesResult._

case class ResponseRoutesResult (
  searchId: String,
locations: List[ResponseRoutesLocation],
unreachable: List[String])

object ResponseRoutesResult {
  import DateTimeCodecs._

  implicit val ResponseRoutesResultCodecJson: CodecJson[ResponseRoutesResult] = CodecJson.derive[ResponseRoutesResult]
  implicit val ResponseRoutesResultDecoder: EntityDecoder[ResponseRoutesResult] = jsonOf[ResponseRoutesResult]
  implicit val ResponseRoutesResultEncoder: EntityEncoder[ResponseRoutesResult] = jsonEncoderOf[ResponseRoutesResult]
}
