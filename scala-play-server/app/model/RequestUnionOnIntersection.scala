package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestUnionOnIntersection.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class RequestUnionOnIntersection(
  id: String,
  searchIds: List[String]
)

object RequestUnionOnIntersection {
  implicit lazy val requestUnionOnIntersectionJsonFormat: Format[RequestUnionOnIntersection] = Json.format[RequestUnionOnIntersection]
}

