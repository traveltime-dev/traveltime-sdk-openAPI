package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeMapWkt.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseTimeMapWkt(
  results: List[ResponseTimeMapWktResult]
)

object ResponseTimeMapWkt {
  implicit lazy val responseTimeMapWktJsonFormat: Format[ResponseTimeMapWkt] = Json.format[ResponseTimeMapWkt]
}

