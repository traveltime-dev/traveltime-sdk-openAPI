package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for RequestTimeFilterPostcodesDepartureSearch.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class RequestTimeFilterPostcodesDepartureSearch(
  id: String,
  transportation: RequestTransportation,
  travelUnderscoretime: Int,
  departureUnderscoretime: OffsetDateTime,
  properties: List[RequestTimeFilterPostcodesProperty],
  range: Option[RequestRangeFull]
)

object RequestTimeFilterPostcodesDepartureSearch {
  implicit lazy val requestTimeFilterPostcodesDepartureSearchJsonFormat: Format[RequestTimeFilterPostcodesDepartureSearch] = Json.format[RequestTimeFilterPostcodesDepartureSearch]
}

