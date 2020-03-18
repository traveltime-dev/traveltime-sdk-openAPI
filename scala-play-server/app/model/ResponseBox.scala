package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseBox.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseBox(
  minUnderscorelat: Double,
  maxUnderscorelat: Double,
  minUnderscorelng: Double,
  maxUnderscorelng: Double
)

object ResponseBox {
  implicit lazy val responseBoxJsonFormat: Format[ResponseBox] = Json.format[ResponseBox]
}

