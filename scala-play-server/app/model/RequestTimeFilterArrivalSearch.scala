package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestTimeFilterArrivalSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class RequestTimeFilterArrivalSearch(
  id: String,
  departureUnderscorelocationUnderscoreids: List[String],
  arrivalUnderscorelocationUnderscoreid: String,
  transportation: RequestTransportation,
  travelUnderscoretime: Int,
  arrivalUnderscoretime: OffsetDateTime,
  properties: List[RequestTimeFilterProperty],
  range: Option[RequestRangeFull]
)

object RequestTimeFilterArrivalSearch {
  implicit lazy val requestTimeFilterArrivalSearchJsonFormat: Format[RequestTimeFilterArrivalSearch] = Json.format[RequestTimeFilterArrivalSearch]
}

