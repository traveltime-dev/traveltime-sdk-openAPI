package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestTimeFilterPostcodeSectorsArrivalSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class RequestTimeFilterPostcodeSectorsArrivalSearch(
  id: String,
  transportation: RequestTransportation,
  travelTime: Int,
  arrivalTime: OffsetDateTime,
  reachablePostcodesThreshold: Double,
  properties: List[RequestTimeFilterPostcodeSectorsProperty],
  range: Option[RequestRangeFull]
)

object RequestTimeFilterPostcodeSectorsArrivalSearch {
  implicit lazy val requestTimeFilterPostcodeSectorsArrivalSearchJsonFormat: Format[RequestTimeFilterPostcodeSectorsArrivalSearch] = Json.format[RequestTimeFilterPostcodeSectorsArrivalSearch]
}

