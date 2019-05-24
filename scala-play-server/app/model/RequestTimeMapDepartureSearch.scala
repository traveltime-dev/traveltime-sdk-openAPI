package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestTimeMapDepartureSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class RequestTimeMapDepartureSearch(
  id: String,
  coords: Coords,
  transportation: RequestTransportation,
  travelUnderscoretime: Int,
  departureUnderscoretime: OffsetDateTime,
  properties: Option[List[RequestTimeMapProperty]],
  range: Option[RequestRangeNoMaxResults]
)

object RequestTimeMapDepartureSearch {
  implicit lazy val requestTimeMapDepartureSearchJsonFormat: Format[RequestTimeMapDepartureSearch] = Json.format[RequestTimeMapDepartureSearch]
}
