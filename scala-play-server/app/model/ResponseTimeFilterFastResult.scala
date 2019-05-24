package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterFastResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeFilterFastResult(
  searchUnderscoreid: String,
  locations: List[ResponseTimeFilterFastLocation],
  unreachable: List[String]
)

object ResponseTimeFilterFastResult {
  implicit lazy val responseTimeFilterFastResultJsonFormat: Format[ResponseTimeFilterFastResult] = Json.format[ResponseTimeFilterFastResult]
}

