package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseGeocoding.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class ResponseGeocoding(
  `type`: String,
  features: List[ResponseGeocodingGeoJsonFeature]
)

object ResponseGeocoding {
  implicit lazy val responseGeocodingJsonFormat: Format[ResponseGeocoding] = Json.format[ResponseGeocoding]
}

