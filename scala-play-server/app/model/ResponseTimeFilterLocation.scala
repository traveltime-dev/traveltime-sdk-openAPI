package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterLocation.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseTimeFilterLocation(
  id: String,
  properties: List[ResponseTimeFilterProperties]
)

object ResponseTimeFilterLocation {
  implicit lazy val responseTimeFilterLocationJsonFormat: Format[ResponseTimeFilterLocation] = Json.format[ResponseTimeFilterLocation]
}

