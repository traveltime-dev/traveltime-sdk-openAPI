package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseShape.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseShape(
  shell: List[Coords],
  holes: List[List[Coords]]
)

object ResponseShape {
  implicit lazy val responseShapeJsonFormat: Format[ResponseShape] = Json.format[ResponseShape]
}

