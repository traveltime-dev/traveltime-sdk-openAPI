package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcode.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeFilterPostcode(
  code: String,
  properties: List[ResponseTimeFilterPostcodesProperties]
)

object ResponseTimeFilterPostcode {
  implicit lazy val responseTimeFilterPostcodeJsonFormat: Format[ResponseTimeFilterPostcode] = Json.format[ResponseTimeFilterPostcode]
}

