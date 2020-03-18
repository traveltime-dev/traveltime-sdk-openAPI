package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseGeocodingProperties.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseGeocodingProperties(
  name: String,
  label: String,
  score: Option[Double],
  houseUnderscorenumber: Option[String],
  street: Option[String],
  region: Option[String],
  regionUnderscorecode: Option[String],
  neighbourhood: Option[String],
  county: Option[String],
  macroregion: Option[String],
  city: Option[String],
  country: Option[String],
  countryUnderscorecode: Option[String],
  continent: Option[String],
  postcode: Option[String],
  features: Option[ResponseMapInfoFeatures]
)

object ResponseGeocodingProperties {
  implicit lazy val responseGeocodingPropertiesJsonFormat: Format[ResponseGeocodingProperties] = Json.format[ResponseGeocodingProperties]
}

