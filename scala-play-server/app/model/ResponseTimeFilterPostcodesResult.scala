package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodesResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseTimeFilterPostcodesResult(
  searchUnderscoreid: String,
  postcodes: List[ResponseTimeFilterPostcode]
)

object ResponseTimeFilterPostcodesResult {
  implicit lazy val responseTimeFilterPostcodesResultJsonFormat: Format[ResponseTimeFilterPostcodesResult] = Json.format[ResponseTimeFilterPostcodesResult]
}

