package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestRoutesArrivalSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class RequestRoutesArrivalSearch(
  id: String,
  departureLocationIds: List[String],
  arrivalLocationId: String,
  transportation: RequestTransportation,
  arrivalTime: OffsetDateTime,
  properties: List[RequestRoutesProperty],
  range: Option[RequestRangeFull]
)

object RequestRoutesArrivalSearch {
  implicit lazy val requestRoutesArrivalSearchJsonFormat: Format[RequestRoutesArrivalSearch] = Json.format[RequestRoutesArrivalSearch]
}

