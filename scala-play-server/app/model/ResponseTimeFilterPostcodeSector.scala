package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodeSector.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeFilterPostcodeSector(
  code: String,
  properties: ResponseTimeFilterPostcodeSectorProperties
)

object ResponseTimeFilterPostcodeSector {
  implicit lazy val responseTimeFilterPostcodeSectorJsonFormat: Format[ResponseTimeFilterPostcodeSector] = Json.format[ResponseTimeFilterPostcodeSector]
}

