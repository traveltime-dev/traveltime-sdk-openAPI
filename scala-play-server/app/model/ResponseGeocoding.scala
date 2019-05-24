package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseGeocoding.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseGeocoding(
  `type`: String,
  features: List[ResponseGeocodingGeoJsonFeature]
)

object ResponseGeocoding {
  implicit lazy val responseGeocodingJsonFormat: Format[ResponseGeocoding] = Json.format[ResponseGeocoding]
}

