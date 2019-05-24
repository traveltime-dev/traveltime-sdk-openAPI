package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestSupportedLocations.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class RequestSupportedLocations(
  locations: List[RequestLocation]
)

object RequestSupportedLocations {
  implicit lazy val requestSupportedLocationsJsonFormat: Format[RequestSupportedLocations] = Json.format[RequestSupportedLocations]
}

