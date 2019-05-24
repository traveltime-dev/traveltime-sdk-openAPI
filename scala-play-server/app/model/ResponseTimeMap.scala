package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeMap.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeMap(
  results: List[ResponseTimeMapResult]
)

object ResponseTimeMap {
  implicit lazy val responseTimeMapJsonFormat: Format[ResponseTimeMap] = Json.format[ResponseTimeMap]
}

