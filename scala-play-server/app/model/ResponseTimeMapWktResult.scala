package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeMapWktResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeMapWktResult(
  searchUnderscoreid: String,
  shape: String,
  properties: ResponseTimeMapProperties
)

object ResponseTimeMapWktResult {
  implicit lazy val responseTimeMapWktResultJsonFormat: Format[ResponseTimeMapWktResult] = Json.format[ResponseTimeMapWktResult]
}

