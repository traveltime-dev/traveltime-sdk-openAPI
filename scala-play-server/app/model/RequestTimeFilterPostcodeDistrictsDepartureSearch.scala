package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestTimeFilterPostcodeDistrictsDepartureSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class RequestTimeFilterPostcodeDistrictsDepartureSearch(
  id: String,
  transportation: RequestTransportation,
  travelTime: Int,
  departureTime: OffsetDateTime,
  reachablePostcodesThreshold: Double,
  properties: List[RequestTimeFilterPostcodeDistrictsProperty],
  range: Option[RequestRangeFull]
)

object RequestTimeFilterPostcodeDistrictsDepartureSearch {
  implicit lazy val requestTimeFilterPostcodeDistrictsDepartureSearchJsonFormat: Format[RequestTimeFilterPostcodeDistrictsDepartureSearch] = Json.format[RequestTimeFilterPostcodeDistrictsDepartureSearch]
}

