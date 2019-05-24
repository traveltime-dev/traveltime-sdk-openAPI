package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilter.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeFilter(
  results: List[ResponseTimeFilterResult]
)

object ResponseTimeFilter {
  implicit lazy val responseTimeFilterJsonFormat: Format[ResponseTimeFilter] = Json.format[ResponseTimeFilter]
}

