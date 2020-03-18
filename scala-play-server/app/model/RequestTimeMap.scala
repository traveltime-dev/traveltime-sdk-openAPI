package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeMap.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class RequestTimeMap(
  departureSearches: Option[List[RequestTimeMapDepartureSearch]],
  arrivalSearches: Option[List[RequestTimeMapArrivalSearch]],
  unions: Option[List[RequestUnionOnIntersection]],
  intersections: Option[List[RequestUnionOnIntersection]]
)

object RequestTimeMap {
  implicit lazy val requestTimeMapJsonFormat: Format[RequestTimeMap] = Json.format[RequestTimeMap]
}

