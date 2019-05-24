package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodesResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeFilterPostcodesResult(
  searchUnderscoreid: String,
  postcodes: List[ResponseTimeFilterPostcode]
)

object ResponseTimeFilterPostcodesResult {
  implicit lazy val responseTimeFilterPostcodesResultJsonFormat: Format[ResponseTimeFilterPostcodesResult] = Json.format[ResponseTimeFilterPostcodesResult]
}

