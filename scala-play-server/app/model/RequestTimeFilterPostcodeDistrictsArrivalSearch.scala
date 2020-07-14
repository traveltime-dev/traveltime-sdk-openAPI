package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestTimeFilterPostcodeDistrictsArrivalSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class RequestTimeFilterPostcodeDistrictsArrivalSearch(
  id: String,
  transportation: RequestTransportation,
  travelTime: Int,
  arrivalTime: OffsetDateTime,
  reachablePostcodesThreshold: Double,
  properties: List[RequestTimeFilterPostcodeDistrictsProperty],
  range: Option[RequestRangeFull]
)

object RequestTimeFilterPostcodeDistrictsArrivalSearch {
  implicit lazy val requestTimeFilterPostcodeDistrictsArrivalSearchJsonFormat: Format[RequestTimeFilterPostcodeDistrictsArrivalSearch] = Json.format[RequestTimeFilterPostcodeDistrictsArrivalSearch]
}

