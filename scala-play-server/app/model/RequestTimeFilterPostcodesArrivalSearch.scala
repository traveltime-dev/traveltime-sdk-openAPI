package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestTimeFilterPostcodesArrivalSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class RequestTimeFilterPostcodesArrivalSearch(
  id: String,
  transportation: RequestTransportation,
  travelUnderscoretime: Int,
  arrivalUnderscoretime: OffsetDateTime,
  properties: List[RequestTimeFilterPostcodesProperty],
  range: Option[RequestRangeFull]
)

object RequestTimeFilterPostcodesArrivalSearch {
  implicit lazy val requestTimeFilterPostcodesArrivalSearchJsonFormat: Format[RequestTimeFilterPostcodesArrivalSearch] = Json.format[RequestTimeFilterPostcodesArrivalSearch]
}

