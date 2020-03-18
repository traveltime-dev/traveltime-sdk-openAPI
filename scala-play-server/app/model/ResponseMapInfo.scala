package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseMapInfo.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseMapInfo(
  maps: List[ResponseMapInfoMap]
)

object ResponseMapInfo {
  implicit lazy val responseMapInfoJsonFormat: Format[ResponseMapInfo] = Json.format[ResponseMapInfo]
}

