package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodesResult.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseTimeFilterPostcodesResult(
  searchId: String,
  postcodes: List[ResponseTimeFilterPostcode]
)

object ResponseTimeFilterPostcodesResult {
  implicit lazy val responseTimeFilterPostcodesResultJsonFormat: Format[ResponseTimeFilterPostcodesResult] = Json.format[ResponseTimeFilterPostcodesResult]
}

