package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestUnionOnIntersection.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class RequestUnionOnIntersection(
  id: String,
  searchUnderscoreids: List[String]
)

object RequestUnionOnIntersection {
  implicit lazy val requestUnionOnIntersectionJsonFormat: Format[RequestUnionOnIntersection] = Json.format[RequestUnionOnIntersection]
}

