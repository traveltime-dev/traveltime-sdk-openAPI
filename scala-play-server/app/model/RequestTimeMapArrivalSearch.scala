package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestTimeMapArrivalSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class RequestTimeMapArrivalSearch(
  id: String,
  coords: Coords,
  transportation: RequestTransportation,
  travelTime: Int,
  arrivalTime: OffsetDateTime,
  properties: Option[List[RequestTimeMapProperty]],
  range: Option[RequestRangeNoMaxResults]
)

object RequestTimeMapArrivalSearch {
  implicit lazy val requestTimeMapArrivalSearchJsonFormat: Format[RequestTimeMapArrivalSearch] = Json.format[RequestTimeMapArrivalSearch]
}

