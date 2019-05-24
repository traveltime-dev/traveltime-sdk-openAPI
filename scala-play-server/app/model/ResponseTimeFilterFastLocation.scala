package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterFastLocation.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeFilterFastLocation(
  id: String,
  properties: List[ResponseTimeFilterFastProperties]
)

object ResponseTimeFilterFastLocation {
  implicit lazy val responseTimeFilterFastLocationJsonFormat: Format[ResponseTimeFilterFastLocation] = Json.format[ResponseTimeFilterFastLocation]
}

