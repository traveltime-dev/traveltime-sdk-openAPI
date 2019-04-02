package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseGeocodingGeometry._

case class ResponseGeocodingGeometry (
  `type`: String,
coordinates: List[Double])

object ResponseGeocodingGeometry {
  import DateTimeCodecs._

  implicit val ResponseGeocodingGeometryCodecJson: CodecJson[ResponseGeocodingGeometry] = CodecJson.derive[ResponseGeocodingGeometry]
  implicit val ResponseGeocodingGeometryDecoder: EntityDecoder[ResponseGeocodingGeometry] = jsonOf[ResponseGeocodingGeometry]
  implicit val ResponseGeocodingGeometryEncoder: EntityEncoder[ResponseGeocodingGeometry] = jsonEncoderOf[ResponseGeocodingGeometry]
}
