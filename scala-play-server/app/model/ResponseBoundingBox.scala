package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseBoundingBox.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class ResponseBoundingBox(
  envelope: ResponseBox,
  boxes: List[ResponseBox]
)

object ResponseBoundingBox {
  implicit lazy val responseBoundingBoxJsonFormat: Format[ResponseBoundingBox] = Json.format[ResponseBoundingBox]
}

