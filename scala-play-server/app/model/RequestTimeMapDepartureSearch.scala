package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestTimeMapDepartureSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class RequestTimeMapDepartureSearch(
  id: String,
  coords: Coords,
  transportation: RequestTransportation,
  travelTime: Int,
  departureTime: OffsetDateTime,
  properties: Option[List[RequestTimeMapProperty]],
  range: Option[RequestRangeNoMaxResults]
)

object RequestTimeMapDepartureSearch {
  implicit lazy val requestTimeMapDepartureSearchJsonFormat: Format[RequestTimeMapDepartureSearch] = Json.format[RequestTimeMapDepartureSearch]
}

