package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestTimeFilterPostcodeDistrictsArrivalSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class RequestTimeFilterPostcodeDistrictsArrivalSearch(
  id: String,
  transportation: RequestTransportation,
  travelUnderscoretime: Int,
  arrivalUnderscoretime: OffsetDateTime,
  reachableUnderscorepostcodesUnderscorethreshold: Double,
  properties: List[RequestTimeFilterPostcodeDistrictsProperty],
  range: Option[RequestRangeFull]
)

object RequestTimeFilterPostcodeDistrictsArrivalSearch {
  implicit lazy val requestTimeFilterPostcodeDistrictsArrivalSearchJsonFormat: Format[RequestTimeFilterPostcodeDistrictsArrivalSearch] = Json.format[RequestTimeFilterPostcodeDistrictsArrivalSearch]
}
