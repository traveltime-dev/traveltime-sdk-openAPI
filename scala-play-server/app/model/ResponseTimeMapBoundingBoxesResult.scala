package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeMapBoundingBoxesResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class ResponseTimeMapBoundingBoxesResult(
  searchId: String,
  boundingBoxes: List[ResponseBoundingBox],
  properties: ResponseTimeMapProperties
)

object ResponseTimeMapBoundingBoxesResult {
  implicit lazy val responseTimeMapBoundingBoxesResultJsonFormat: Format[ResponseTimeMapBoundingBoxesResult] = Json.format[ResponseTimeMapBoundingBoxesResult]
}

