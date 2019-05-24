package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeMapResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeMapResult(
  searchUnderscoreid: String,
  shapes: List[ResponseShape],
  properties: ResponseTimeMapProperties
)

object ResponseTimeMapResult {
  implicit lazy val responseTimeMapResultJsonFormat: Format[ResponseTimeMapResult] = Json.format[ResponseTimeMapResult]
}

