package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodeSectorsResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseTimeFilterPostcodeSectorsResult(
  searchId: String,
  sectors: List[ResponseTimeFilterPostcodeSector]
)

object ResponseTimeFilterPostcodeSectorsResult {
  implicit lazy val responseTimeFilterPostcodeSectorsResultJsonFormat: Format[ResponseTimeFilterPostcodeSectorsResult] = Json.format[ResponseTimeFilterPostcodeSectorsResult]
}

