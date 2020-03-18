package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestTimeFilterArrivalSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class RequestTimeFilterArrivalSearch(
  id: String,
  departureLocationIds: List[String],
  arrivalLocationId: String,
  transportation: RequestTransportation,
  travelTime: Int,
  arrivalTime: OffsetDateTime,
  properties: List[RequestTimeFilterProperty],
  range: Option[RequestRangeFull]
)

object RequestTimeFilterArrivalSearch {
  implicit lazy val requestTimeFilterArrivalSearchJsonFormat: Format[RequestTimeFilterArrivalSearch] = Json.format[RequestTimeFilterArrivalSearch]
}

