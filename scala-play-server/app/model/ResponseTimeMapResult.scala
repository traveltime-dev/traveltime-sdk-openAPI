package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeMapResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseTimeMapResult(
  searchUnderscoreid: String,
  shapes: List[ResponseShape],
  properties: ResponseTimeMapProperties
)

object ResponseTimeMapResult {
  implicit lazy val responseTimeMapResultJsonFormat: Format[ResponseTimeMapResult] = Json.format[ResponseTimeMapResult]
}

