package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseSupportedLocations.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseSupportedLocations(
  locations: List[ResponseSupportedLocation],
  unsupportedUnderscorelocations: List[String]
)

object ResponseSupportedLocations {
  implicit lazy val responseSupportedLocationsJsonFormat: Format[ResponseSupportedLocations] = Json.format[ResponseSupportedLocations]
}

