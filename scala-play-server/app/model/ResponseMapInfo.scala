package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseMapInfo.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseMapInfo(
  maps: List[ResponseMapInfoMap]
)

object ResponseMapInfo {
  implicit lazy val responseMapInfoJsonFormat: Format[ResponseMapInfo] = Json.format[ResponseMapInfo]
}

