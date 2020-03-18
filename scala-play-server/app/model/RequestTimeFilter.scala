package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilter.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class RequestTimeFilter(
  locations: List[RequestLocation],
  departureUnderscoresearches: Option[List[RequestTimeFilterDepartureSearch]],
  arrivalUnderscoresearches: Option[List[RequestTimeFilterArrivalSearch]]
)

object RequestTimeFilter {
  implicit lazy val requestTimeFilterJsonFormat: Format[RequestTimeFilter] = Json.format[RequestTimeFilter]
}

