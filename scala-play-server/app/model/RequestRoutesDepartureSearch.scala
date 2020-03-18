package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestRoutesDepartureSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class RequestRoutesDepartureSearch(
  id: String,
  departureUnderscorelocationUnderscoreid: String,
  arrivalUnderscorelocationUnderscoreids: List[String],
  transportation: RequestTransportation,
  departureUnderscoretime: OffsetDateTime,
  properties: List[RequestRoutesProperty],
  range: Option[RequestRangeFull]
)

object RequestRoutesDepartureSearch {
  implicit lazy val requestRoutesDepartureSearchJsonFormat: Format[RequestRoutesDepartureSearch] = Json.format[RequestRoutesDepartureSearch]
}

