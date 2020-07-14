package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestSupportedLocations.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class RequestSupportedLocations(
  locations: List[RequestLocation]
)

object RequestSupportedLocations {
  implicit lazy val requestSupportedLocationsJsonFormat: Format[RequestSupportedLocations] = Json.format[RequestSupportedLocations]
}

