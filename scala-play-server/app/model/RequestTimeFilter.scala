package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilter.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class RequestTimeFilter(
  locations: List[RequestLocation],
  departureSearches: Option[List[RequestTimeFilterDepartureSearch]],
  arrivalSearches: Option[List[RequestTimeFilterArrivalSearch]]
)

object RequestTimeFilter {
  implicit lazy val requestTimeFilterJsonFormat: Format[RequestTimeFilter] = Json.format[RequestTimeFilter]
}

