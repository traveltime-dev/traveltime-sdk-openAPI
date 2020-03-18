package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestTimeFilterDepartureSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class RequestTimeFilterDepartureSearch(
  id: String,
  departureUnderscorelocationUnderscoreid: String,
  arrivalUnderscorelocationUnderscoreids: List[String],
  transportation: RequestTransportation,
  travelUnderscoretime: Int,
  departureUnderscoretime: OffsetDateTime,
  properties: List[RequestTimeFilterProperty],
  range: Option[RequestRangeFull]
)

object RequestTimeFilterDepartureSearch {
  implicit lazy val requestTimeFilterDepartureSearchJsonFormat: Format[RequestTimeFilterDepartureSearch] = Json.format[RequestTimeFilterDepartureSearch]
}

