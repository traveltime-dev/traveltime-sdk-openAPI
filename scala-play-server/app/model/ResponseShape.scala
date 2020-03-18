package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseShape.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class ResponseShape(
  shell: List[Coords],
  holes: List[List[Coords]]
)

object ResponseShape {
  implicit lazy val responseShapeJsonFormat: Format[ResponseShape] = Json.format[ResponseShape]
}

