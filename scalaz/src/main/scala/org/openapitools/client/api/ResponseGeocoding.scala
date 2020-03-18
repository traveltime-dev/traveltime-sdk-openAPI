package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseGeocoding._

case class ResponseGeocoding (
  `type`: String,
features: List[ResponseGeocodingGeoJsonFeature])

object ResponseGeocoding {
  import DateTimeCodecs._

  implicit val ResponseGeocodingCodecJson: CodecJson[ResponseGeocoding] = CodecJson.derive[ResponseGeocoding]
  implicit val ResponseGeocodingDecoder: EntityDecoder[ResponseGeocoding] = jsonOf[ResponseGeocoding]
  implicit val ResponseGeocodingEncoder: EntityEncoder[ResponseGeocoding] = jsonEncoderOf[ResponseGeocoding]
}
