package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterFast.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseTimeFilterFast(
  results: List[ResponseTimeFilterFastResult]
)

object ResponseTimeFilterFast {
  implicit lazy val responseTimeFilterFastJsonFormat: Format[ResponseTimeFilterFast] = Json.format[ResponseTimeFilterFast]
}

