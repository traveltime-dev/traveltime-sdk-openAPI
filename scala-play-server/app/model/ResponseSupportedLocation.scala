package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseSupportedLocation.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseSupportedLocation(
  id: String,
  mapName: String
)

object ResponseSupportedLocation {
  implicit lazy val responseSupportedLocationJsonFormat: Format[ResponseSupportedLocation] = Json.format[ResponseSupportedLocation]
}

