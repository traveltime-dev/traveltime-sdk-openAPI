package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseGeocodingGeoJsonFeature.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseGeocodingGeoJsonFeature(
  `type`: String,
  geometry: ResponseGeocodingGeometry,
  properties: ResponseGeocodingProperties
)

object ResponseGeocodingGeoJsonFeature {
  implicit lazy val responseGeocodingGeoJsonFeatureJsonFormat: Format[ResponseGeocodingGeoJsonFeature] = Json.format[ResponseGeocodingGeoJsonFeature]
}

