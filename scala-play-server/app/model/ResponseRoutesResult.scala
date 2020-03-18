package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseRoutesResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class ResponseRoutesResult(
  searchId: String,
  locations: List[ResponseRoutesLocation],
  unreachable: List[String]
)

object ResponseRoutesResult {
  implicit lazy val responseRoutesResultJsonFormat: Format[ResponseRoutesResult] = Json.format[ResponseRoutesResult]
}

