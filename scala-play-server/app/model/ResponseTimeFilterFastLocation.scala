package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterFastLocation.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseTimeFilterFastLocation(
  id: String,
  properties: List[ResponseTimeFilterFastProperties]
)

object ResponseTimeFilterFastLocation {
  implicit lazy val responseTimeFilterFastLocationJsonFormat: Format[ResponseTimeFilterFastLocation] = Json.format[ResponseTimeFilterFastLocation]
}

