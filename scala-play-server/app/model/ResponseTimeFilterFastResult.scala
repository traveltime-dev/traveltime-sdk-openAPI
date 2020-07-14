package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterFastResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseTimeFilterFastResult(
  searchId: String,
  locations: List[ResponseTimeFilterFastLocation],
  unreachable: List[String]
)

object ResponseTimeFilterFastResult {
  implicit lazy val responseTimeFilterFastResultJsonFormat: Format[ResponseTimeFilterFastResult] = Json.format[ResponseTimeFilterFastResult]
}

