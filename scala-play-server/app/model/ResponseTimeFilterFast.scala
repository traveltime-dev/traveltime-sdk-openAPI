package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterFast.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseTimeFilterFast(
  results: List[ResponseTimeFilterFastResult]
)

object ResponseTimeFilterFast {
  implicit lazy val responseTimeFilterFastJsonFormat: Format[ResponseTimeFilterFast] = Json.format[ResponseTimeFilterFast]
}

