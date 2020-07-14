package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for Coords.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class Coords(
  lat: Double,
  lng: Double
)

object Coords {
  implicit lazy val coordsJsonFormat: Format[Coords] = Json.format[Coords]
}

