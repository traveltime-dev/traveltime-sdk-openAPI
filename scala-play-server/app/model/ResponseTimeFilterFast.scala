package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterFast.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class ResponseTimeFilterFast(
  results: List[ResponseTimeFilterFastResult]
)

object ResponseTimeFilterFast {
  implicit lazy val responseTimeFilterFastJsonFormat: Format[ResponseTimeFilterFast] = Json.format[ResponseTimeFilterFast]
}

