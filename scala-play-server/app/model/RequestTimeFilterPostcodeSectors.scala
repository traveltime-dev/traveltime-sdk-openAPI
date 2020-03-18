package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilterPostcodeSectors.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class RequestTimeFilterPostcodeSectors(
  departureSearches: Option[List[RequestTimeFilterPostcodeSectorsDepartureSearch]],
  arrivalSearches: Option[List[RequestTimeFilterPostcodeSectorsArrivalSearch]]
)

object RequestTimeFilterPostcodeSectors {
  implicit lazy val requestTimeFilterPostcodeSectorsJsonFormat: Format[RequestTimeFilterPostcodeSectors] = Json.format[RequestTimeFilterPostcodeSectors]
}

