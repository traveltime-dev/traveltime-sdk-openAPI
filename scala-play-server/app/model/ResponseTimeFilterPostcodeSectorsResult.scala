package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodeSectorsResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeFilterPostcodeSectorsResult(
  searchUnderscoreid: String,
  sectors: List[ResponseTimeFilterPostcodeSector]
)

object ResponseTimeFilterPostcodeSectorsResult {
  implicit lazy val responseTimeFilterPostcodeSectorsResultJsonFormat: Format[ResponseTimeFilterPostcodeSectorsResult] = Json.format[ResponseTimeFilterPostcodeSectorsResult]
}

