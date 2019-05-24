package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseMapInfoMap.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseMapInfoMap(
  name: String,
  features: ResponseMapInfoFeatures
)

object ResponseMapInfoMap {
  implicit lazy val responseMapInfoMapJsonFormat: Format[ResponseMapInfoMap] = Json.format[ResponseMapInfoMap]
}

