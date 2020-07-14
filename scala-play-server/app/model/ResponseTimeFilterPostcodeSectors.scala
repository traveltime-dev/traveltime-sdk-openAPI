package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodeSectors.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseTimeFilterPostcodeSectors(
  results: List[ResponseTimeFilterPostcodeSectorsResult]
)

object ResponseTimeFilterPostcodeSectors {
  implicit lazy val responseTimeFilterPostcodeSectorsJsonFormat: Format[ResponseTimeFilterPostcodeSectors] = Json.format[ResponseTimeFilterPostcodeSectors]
}

