package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseGeocodingGeoJsonFeature._

case class ResponseGeocodingGeoJsonFeature (
  `type`: String,
geometry: ResponseGeocodingGeometry,
properties: ResponseGeocodingProperties)

object ResponseGeocodingGeoJsonFeature {
  import DateTimeCodecs._

  implicit val ResponseGeocodingGeoJsonFeatureCodecJson: CodecJson[ResponseGeocodingGeoJsonFeature] = CodecJson.derive[ResponseGeocodingGeoJsonFeature]
  implicit val ResponseGeocodingGeoJsonFeatureDecoder: EntityDecoder[ResponseGeocodingGeoJsonFeature] = jsonOf[ResponseGeocodingGeoJsonFeature]
  implicit val ResponseGeocodingGeoJsonFeatureEncoder: EntityEncoder[ResponseGeocodingGeoJsonFeature] = jsonEncoderOf[ResponseGeocodingGeoJsonFeature]
}
