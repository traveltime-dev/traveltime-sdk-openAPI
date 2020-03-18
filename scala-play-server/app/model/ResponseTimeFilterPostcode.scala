package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcode.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseTimeFilterPostcode(
  code: String,
  properties: List[ResponseTimeFilterPostcodesProperties]
)

object ResponseTimeFilterPostcode {
  implicit lazy val responseTimeFilterPostcodeJsonFormat: Format[ResponseTimeFilterPostcode] = Json.format[ResponseTimeFilterPostcode]
}

