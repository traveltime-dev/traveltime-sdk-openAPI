package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseSupportedLocation.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseSupportedLocation(
  id: String,
  mapUnderscorename: String
)

object ResponseSupportedLocation {
  implicit lazy val responseSupportedLocationJsonFormat: Format[ResponseSupportedLocation] = Json.format[ResponseSupportedLocation]
}

