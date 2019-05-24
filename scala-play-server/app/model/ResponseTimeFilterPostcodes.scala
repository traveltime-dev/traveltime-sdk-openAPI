package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodes.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeFilterPostcodes(
  results: List[ResponseTimeFilterPostcodesResult]
)

object ResponseTimeFilterPostcodes {
  implicit lazy val responseTimeFilterPostcodesJsonFormat: Format[ResponseTimeFilterPostcodes] = Json.format[ResponseTimeFilterPostcodes]
}

