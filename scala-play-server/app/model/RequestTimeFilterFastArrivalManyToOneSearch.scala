package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilterFastArrivalManyToOneSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class RequestTimeFilterFastArrivalManyToOneSearch(
  id: String,
  arrivalUnderscorelocationUnderscoreid: String,
  departureUnderscorelocationUnderscoreids: List[String],
  transportation: RequestTransportationFast,
  travelUnderscoretime: Int,
  arrivalUnderscoretimeUnderscoreperiod: RequestArrivalTimePeriod,
  properties: List[RequestTimeFilterFastProperty]
)

object RequestTimeFilterFastArrivalManyToOneSearch {
  implicit lazy val requestTimeFilterFastArrivalManyToOneSearchJsonFormat: Format[RequestTimeFilterFastArrivalManyToOneSearch] = Json.format[RequestTimeFilterFastArrivalManyToOneSearch]
}

