package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseRoutes.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseRoutes(
  results: List[ResponseRoutesResult]
)

object ResponseRoutes {
  implicit lazy val responseRoutesJsonFormat: Format[ResponseRoutes] = Json.format[ResponseRoutes]
}

