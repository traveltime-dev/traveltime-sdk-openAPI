package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseError.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseError(
  httpUnderscorestatus: Option[Int],
  errorUnderscorecode: Option[Int],
  description: Option[String],
  documentationUnderscorelink: Option[String],
  additionalUnderscoreinfo: Option[Map[String, List[String]]]
)

object ResponseError {
  implicit lazy val responseErrorJsonFormat: Format[ResponseError] = Json.format[ResponseError]
}

