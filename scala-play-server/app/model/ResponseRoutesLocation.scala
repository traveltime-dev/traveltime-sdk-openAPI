package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseRoutesLocation.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseRoutesLocation(
  id: String,
  properties: List[ResponseRoutesProperties]
)

object ResponseRoutesLocation {
  implicit lazy val responseRoutesLocationJsonFormat: Format[ResponseRoutesLocation] = Json.format[ResponseRoutesLocation]
}

