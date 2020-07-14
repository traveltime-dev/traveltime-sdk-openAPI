package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestTimeFilterPostcodeSectorsDepartureSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class RequestTimeFilterPostcodeSectorsDepartureSearch(
  id: String,
  transportation: RequestTransportation,
  travelTime: Int,
  departureTime: OffsetDateTime,
  reachablePostcodesThreshold: Double,
  properties: List[RequestTimeFilterPostcodeSectorsProperty],
  range: Option[RequestRangeFull]
)

object RequestTimeFilterPostcodeSectorsDepartureSearch {
  implicit lazy val requestTimeFilterPostcodeSectorsDepartureSearchJsonFormat: Format[RequestTimeFilterPostcodeSectorsDepartureSearch] = Json.format[RequestTimeFilterPostcodeSectorsDepartureSearch]
}

