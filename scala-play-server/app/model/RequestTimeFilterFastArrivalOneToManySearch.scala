package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilterFastArrivalOneToManySearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class RequestTimeFilterFastArrivalOneToManySearch(
  id: String,
  departureLocationId: String,
  arrivalLocationIds: List[String],
  transportation: RequestTransportationFast,
  travelTime: Int,
  arrivalTimePeriod: RequestArrivalTimePeriod,
  properties: List[RequestTimeFilterFastProperty]
)

object RequestTimeFilterFastArrivalOneToManySearch {
  implicit lazy val requestTimeFilterFastArrivalOneToManySearchJsonFormat: Format[RequestTimeFilterFastArrivalOneToManySearch] = Json.format[RequestTimeFilterFastArrivalOneToManySearch]
}

