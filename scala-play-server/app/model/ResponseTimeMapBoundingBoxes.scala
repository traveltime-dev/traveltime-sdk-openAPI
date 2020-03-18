package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeMapBoundingBoxes.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseTimeMapBoundingBoxes(
  results: List[ResponseTimeMapBoundingBoxesResult]
)

object ResponseTimeMapBoundingBoxes {
  implicit lazy val responseTimeMapBoundingBoxesJsonFormat: Format[ResponseTimeMapBoundingBoxes] = Json.format[ResponseTimeMapBoundingBoxes]
}

