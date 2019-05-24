package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodeSectors.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeFilterPostcodeSectors(
  results: List[ResponseTimeFilterPostcodeSectorsResult]
)

object ResponseTimeFilterPostcodeSectors {
  implicit lazy val responseTimeFilterPostcodeSectorsJsonFormat: Format[ResponseTimeFilterPostcodeSectors] = Json.format[ResponseTimeFilterPostcodeSectors]
}

