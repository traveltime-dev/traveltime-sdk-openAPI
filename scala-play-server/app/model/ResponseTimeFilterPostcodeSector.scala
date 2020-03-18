package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodeSector.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class ResponseTimeFilterPostcodeSector(
  code: String,
  properties: ResponseTimeFilterPostcodeSectorProperties
)

object ResponseTimeFilterPostcodeSector {
  implicit lazy val responseTimeFilterPostcodeSectorJsonFormat: Format[ResponseTimeFilterPostcodeSector] = Json.format[ResponseTimeFilterPostcodeSector]
}

