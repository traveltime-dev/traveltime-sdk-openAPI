package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestTimeFilterDepartureSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class RequestTimeFilterDepartureSearch(
  id: String,
  departureLocationId: String,
  arrivalLocationIds: List[String],
  transportation: RequestTransportation,
  travelTime: Int,
  departureTime: OffsetDateTime,
  properties: List[RequestTimeFilterProperty],
  range: Option[RequestRangeFull]
)

object RequestTimeFilterDepartureSearch {
  implicit lazy val requestTimeFilterDepartureSearchJsonFormat: Format[RequestTimeFilterDepartureSearch] = Json.format[RequestTimeFilterDepartureSearch]
}

