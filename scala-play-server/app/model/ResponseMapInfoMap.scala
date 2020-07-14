package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseMapInfoMap.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseMapInfoMap(
  name: String,
  features: ResponseMapInfoFeatures
)

object ResponseMapInfoMap {
  implicit lazy val responseMapInfoMapJsonFormat: Format[ResponseMapInfoMap] = Json.format[ResponseMapInfoMap]
}

