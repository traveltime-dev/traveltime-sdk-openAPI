package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodeSectorsResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseTimeFilterPostcodeSectorsResult(
  searchUnderscoreid: String,
  sectors: List[ResponseTimeFilterPostcodeSector]
)

object ResponseTimeFilterPostcodeSectorsResult {
  implicit lazy val responseTimeFilterPostcodeSectorsResultJsonFormat: Format[ResponseTimeFilterPostcodeSectorsResult] = Json.format[ResponseTimeFilterPostcodeSectorsResult]
}

