package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterFast.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeFilterFast(
  results: List[ResponseTimeFilterFastResult]
)

object ResponseTimeFilterFast {
  implicit lazy val responseTimeFilterFastJsonFormat: Format[ResponseTimeFilterFast] = Json.format[ResponseTimeFilterFast]
}

