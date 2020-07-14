package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestRoutes.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class RequestRoutes(
  locations: List[RequestLocation],
  departureSearches: Option[List[RequestRoutesDepartureSearch]],
  arrivalSearches: Option[List[RequestRoutesArrivalSearch]]
)

object RequestRoutes {
  implicit lazy val requestRoutesJsonFormat: Format[RequestRoutes] = Json.format[RequestRoutes]
}

