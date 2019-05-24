package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for Coords.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class Coords(
  lat: Double,
  lng: Double
)

object Coords {
  implicit lazy val coordsJsonFormat: Format[Coords] = Json.format[Coords]
}

