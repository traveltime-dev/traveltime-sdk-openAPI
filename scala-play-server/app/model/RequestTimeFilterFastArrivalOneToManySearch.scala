package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilterFastArrivalOneToManySearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class RequestTimeFilterFastArrivalOneToManySearch(
  id: String,
  departureUnderscorelocationUnderscoreid: String,
  arrivalUnderscorelocationUnderscoreids: List[String],
  transportation: RequestTransportationFast,
  travelUnderscoretime: Int,
  arrivalUnderscoretimeUnderscoreperiod: RequestArrivalTimePeriod,
  properties: List[RequestTimeFilterFastProperty]
)

object RequestTimeFilterFastArrivalOneToManySearch {
  implicit lazy val requestTimeFilterFastArrivalOneToManySearchJsonFormat: Format[RequestTimeFilterFastArrivalOneToManySearch] = Json.format[RequestTimeFilterFastArrivalOneToManySearch]
}

