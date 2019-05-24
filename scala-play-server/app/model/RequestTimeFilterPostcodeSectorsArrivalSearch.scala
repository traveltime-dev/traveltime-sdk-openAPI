package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestTimeFilterPostcodeSectorsArrivalSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class RequestTimeFilterPostcodeSectorsArrivalSearch(
  id: String,
  transportation: RequestTransportation,
  travelUnderscoretime: Int,
  arrivalUnderscoretime: OffsetDateTime,
  reachableUnderscorepostcodesUnderscorethreshold: Double,
  properties: List[RequestTimeFilterPostcodeSectorsProperty],
  range: Option[RequestRangeFull]
)

object RequestTimeFilterPostcodeSectorsArrivalSearch {
  implicit lazy val requestTimeFilterPostcodeSectorsArrivalSearchJsonFormat: Format[RequestTimeFilterPostcodeSectorsArrivalSearch] = Json.format[RequestTimeFilterPostcodeSectorsArrivalSearch]
}

