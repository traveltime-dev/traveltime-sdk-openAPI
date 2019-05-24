package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterLocation.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeFilterLocation(
  id: String,
  properties: List[ResponseTimeFilterProperties]
)

object ResponseTimeFilterLocation {
  implicit lazy val responseTimeFilterLocationJsonFormat: Format[ResponseTimeFilterLocation] = Json.format[ResponseTimeFilterLocation]
}

