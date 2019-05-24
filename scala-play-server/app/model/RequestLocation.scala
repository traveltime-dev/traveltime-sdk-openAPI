package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestLocation.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class RequestLocation(
  id: String,
  coords: Coords
)

object RequestLocation {
  implicit lazy val requestLocationJsonFormat: Format[RequestLocation] = Json.format[RequestLocation]
}

