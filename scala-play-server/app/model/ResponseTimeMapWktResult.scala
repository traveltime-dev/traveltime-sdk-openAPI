package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeMapWktResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseTimeMapWktResult(
  searchId: String,
  shape: String,
  properties: ResponseTimeMapProperties
)

object ResponseTimeMapWktResult {
  implicit lazy val responseTimeMapWktResultJsonFormat: Format[ResponseTimeMapWktResult] = Json.format[ResponseTimeMapWktResult]
}

