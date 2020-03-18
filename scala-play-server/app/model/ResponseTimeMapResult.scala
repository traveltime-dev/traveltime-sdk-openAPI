package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeMapResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class ResponseTimeMapResult(
  searchId: String,
  shapes: List[ResponseShape],
  properties: ResponseTimeMapProperties
)

object ResponseTimeMapResult {
  implicit lazy val responseTimeMapResultJsonFormat: Format[ResponseTimeMapResult] = Json.format[ResponseTimeMapResult]
}

