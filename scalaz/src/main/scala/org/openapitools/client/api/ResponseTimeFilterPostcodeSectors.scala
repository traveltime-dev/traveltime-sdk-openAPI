package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseTimeFilterPostcodeSectors._

case class ResponseTimeFilterPostcodeSectors (
  results: List[ResponseTimeFilterPostcodeSectorsResult])

object ResponseTimeFilterPostcodeSectors {
  import DateTimeCodecs._

  implicit val ResponseTimeFilterPostcodeSectorsCodecJson: CodecJson[ResponseTimeFilterPostcodeSectors] = CodecJson.derive[ResponseTimeFilterPostcodeSectors]
  implicit val ResponseTimeFilterPostcodeSectorsDecoder: EntityDecoder[ResponseTimeFilterPostcodeSectors] = jsonOf[ResponseTimeFilterPostcodeSectors]
  implicit val ResponseTimeFilterPostcodeSectorsEncoder: EntityEncoder[ResponseTimeFilterPostcodeSectors] = jsonEncoderOf[ResponseTimeFilterPostcodeSectors]
}
