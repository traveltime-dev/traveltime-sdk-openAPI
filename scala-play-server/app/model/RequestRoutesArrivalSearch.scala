package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestRoutesArrivalSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class RequestRoutesArrivalSearch(
  id: String,
  departureUnderscorelocationUnderscoreids: List[String],
  arrivalUnderscorelocationUnderscoreid: String,
  transportation: RequestTransportation,
  arrivalUnderscoretime: OffsetDateTime,
  properties: List[RequestRoutesProperty],
  range: Option[RequestRangeFull]
)

object RequestRoutesArrivalSearch {
  implicit lazy val requestRoutesArrivalSearchJsonFormat: Format[RequestRoutesArrivalSearch] = Json.format[RequestRoutesArrivalSearch]
}

