package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilter.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class RequestTimeFilter(
  locations: List[RequestLocation],
  departureUnderscoresearches: Option[List[RequestTimeFilterDepartureSearch]],
  arrivalUnderscoresearches: Option[List[RequestTimeFilterArrivalSearch]]
)

object RequestTimeFilter {
  implicit lazy val requestTimeFilterJsonFormat: Format[RequestTimeFilter] = Json.format[RequestTimeFilter]
}

