package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilterFastArrivalOneToManySearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
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

