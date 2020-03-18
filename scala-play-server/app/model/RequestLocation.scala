package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestLocation.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class RequestLocation(
  id: String,
  coords: Coords
)

object RequestLocation {
  implicit lazy val requestLocationJsonFormat: Format[RequestLocation] = Json.format[RequestLocation]
}

