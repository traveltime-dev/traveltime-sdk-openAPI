package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeMapBoundingBoxesResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeMapBoundingBoxesResult(
  searchUnderscoreid: String,
  boundingUnderscoreboxes: List[ResponseBoundingBox],
  properties: ResponseTimeMapProperties
)

object ResponseTimeMapBoundingBoxesResult {
  implicit lazy val responseTimeMapBoundingBoxesResultJsonFormat: Format[ResponseTimeMapBoundingBoxesResult] = Json.format[ResponseTimeMapBoundingBoxesResult]
}

