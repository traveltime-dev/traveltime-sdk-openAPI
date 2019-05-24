package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseGeocodingGeoJsonFeature.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseGeocodingGeoJsonFeature(
  `type`: String,
  geometry: ResponseGeocodingGeometry,
  properties: ResponseGeocodingProperties
)

object ResponseGeocodingGeoJsonFeature {
  implicit lazy val responseGeocodingGeoJsonFeatureJsonFormat: Format[ResponseGeocodingGeoJsonFeature] = Json.format[ResponseGeocodingGeoJsonFeature]
}

