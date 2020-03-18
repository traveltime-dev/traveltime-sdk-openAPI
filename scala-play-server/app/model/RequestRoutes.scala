package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestRoutes.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class RequestRoutes(
  locations: List[RequestLocation],
  departureUnderscoresearches: Option[List[RequestRoutesDepartureSearch]],
  arrivalUnderscoresearches: Option[List[RequestRoutesArrivalSearch]]
)

object RequestRoutes {
  implicit lazy val requestRoutesJsonFormat: Format[RequestRoutes] = Json.format[RequestRoutes]
}

