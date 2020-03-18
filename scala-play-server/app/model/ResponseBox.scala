package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseBox.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class ResponseBox(
  minLat: Double,
  maxLat: Double,
  minLng: Double,
  maxLng: Double
)

object ResponseBox {
  implicit lazy val responseBoxJsonFormat: Format[ResponseBox] = Json.format[ResponseBox]
}

