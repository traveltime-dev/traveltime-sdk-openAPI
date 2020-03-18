package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodeSectors.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class ResponseTimeFilterPostcodeSectors(
  results: List[ResponseTimeFilterPostcodeSectorsResult]
)

object ResponseTimeFilterPostcodeSectors {
  implicit lazy val responseTimeFilterPostcodeSectorsJsonFormat: Format[ResponseTimeFilterPostcodeSectors] = Json.format[ResponseTimeFilterPostcodeSectors]
}

