package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestTimeMapArrivalSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class RequestTimeMapArrivalSearch(
  id: String,
  coords: Coords,
  transportation: RequestTransportation,
  travelUnderscoretime: Int,
  arrivalUnderscoretime: OffsetDateTime,
  properties: Option[List[RequestTimeMapProperty]],
  range: Option[RequestRangeNoMaxResults]
)

object RequestTimeMapArrivalSearch {
  implicit lazy val requestTimeMapArrivalSearchJsonFormat: Format[RequestTimeMapArrivalSearch] = Json.format[RequestTimeMapArrivalSearch]
}

