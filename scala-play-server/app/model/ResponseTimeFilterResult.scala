package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeFilterResult(
  searchUnderscoreid: String,
  locations: List[ResponseTimeFilterLocation],
  unreachable: List[String]
)

object ResponseTimeFilterResult {
  implicit lazy val responseTimeFilterResultJsonFormat: Format[ResponseTimeFilterResult] = Json.format[ResponseTimeFilterResult]
}

