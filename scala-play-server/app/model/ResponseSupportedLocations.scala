package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseSupportedLocations.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseSupportedLocations(
  locations: List[ResponseSupportedLocation],
  unsupportedUnderscorelocations: List[String]
)

object ResponseSupportedLocations {
  implicit lazy val responseSupportedLocationsJsonFormat: Format[ResponseSupportedLocations] = Json.format[ResponseSupportedLocations]
}

