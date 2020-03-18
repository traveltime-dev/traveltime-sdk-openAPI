package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseSupportedLocation.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class ResponseSupportedLocation(
  id: String,
  mapName: String
)

object ResponseSupportedLocation {
  implicit lazy val responseSupportedLocationJsonFormat: Format[ResponseSupportedLocation] = Json.format[ResponseSupportedLocation]
}

