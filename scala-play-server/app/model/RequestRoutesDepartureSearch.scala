package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestRoutesDepartureSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class RequestRoutesDepartureSearch(
  id: String,
  departureLocationId: String,
  arrivalLocationIds: List[String],
  transportation: RequestTransportation,
  departureTime: OffsetDateTime,
  properties: List[RequestRoutesProperty],
  range: Option[RequestRangeFull]
)

object RequestRoutesDepartureSearch {
  implicit lazy val requestRoutesDepartureSearchJsonFormat: Format[RequestRoutesDepartureSearch] = Json.format[RequestRoutesDepartureSearch]
}

