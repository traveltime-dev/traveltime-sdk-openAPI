package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeMapWktResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseTimeMapWktResult(
  searchUnderscoreid: String,
  shape: String,
  properties: ResponseTimeMapProperties
)

object ResponseTimeMapWktResult {
  implicit lazy val responseTimeMapWktResultJsonFormat: Format[ResponseTimeMapWktResult] = Json.format[ResponseTimeMapWktResult]
}

