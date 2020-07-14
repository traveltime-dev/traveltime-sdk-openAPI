package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseBox.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseBox(
  minLat: Double,
  maxLat: Double,
  minLng: Double,
  maxLng: Double
)

object ResponseBox {
  implicit lazy val responseBoxJsonFormat: Format[ResponseBox] = Json.format[ResponseBox]
}

