package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseGeocodingProperties._

case class ResponseGeocodingProperties (
  name: String,
label: String,
score: Option[Double],
houseNumber: Option[String],
street: Option[String],
region: Option[String],
regionCode: Option[String],
neighbourhood: Option[String],
county: Option[String],
macroregion: Option[String],
city: Option[String],
country: Option[String],
countryCode: Option[String],
continent: Option[String],
postcode: Option[String],
features: Option[ResponseMapInfoFeatures])

object ResponseGeocodingProperties {
  import DateTimeCodecs._

  implicit val ResponseGeocodingPropertiesCodecJson: CodecJson[ResponseGeocodingProperties] = CodecJson.derive[ResponseGeocodingProperties]
  implicit val ResponseGeocodingPropertiesDecoder: EntityDecoder[ResponseGeocodingProperties] = jsonOf[ResponseGeocodingProperties]
  implicit val ResponseGeocodingPropertiesEncoder: EntityEncoder[ResponseGeocodingProperties] = jsonEncoderOf[ResponseGeocodingProperties]
}
