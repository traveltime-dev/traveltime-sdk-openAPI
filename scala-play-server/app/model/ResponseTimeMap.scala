package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeMap.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseTimeMap(
  results: List[ResponseTimeMapResult]
)

object ResponseTimeMap {
  implicit lazy val responseTimeMapJsonFormat: Format[ResponseTimeMap] = Json.format[ResponseTimeMap]
}

