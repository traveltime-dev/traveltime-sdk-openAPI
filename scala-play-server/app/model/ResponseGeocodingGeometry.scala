package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseGeocodingGeometry.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseGeocodingGeometry(
  `type`: String,
  coordinates: List[Double]
)

object ResponseGeocodingGeometry {
  implicit lazy val responseGeocodingGeometryJsonFormat: Format[ResponseGeocodingGeometry] = Json.format[ResponseGeocodingGeometry]
}

