package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilter.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseTimeFilter(
  results: List[ResponseTimeFilterResult]
)

object ResponseTimeFilter {
  implicit lazy val responseTimeFilterJsonFormat: Format[ResponseTimeFilter] = Json.format[ResponseTimeFilter]
}

