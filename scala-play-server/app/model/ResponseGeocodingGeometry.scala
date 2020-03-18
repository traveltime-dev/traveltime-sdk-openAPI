package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseGeocodingGeometry.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseGeocodingGeometry(
  `type`: String,
  coordinates: List[Double]
)

object ResponseGeocodingGeometry {
  implicit lazy val responseGeocodingGeometryJsonFormat: Format[ResponseGeocodingGeometry] = Json.format[ResponseGeocodingGeometry]
}

