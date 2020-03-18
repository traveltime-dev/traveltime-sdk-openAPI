package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilterPostcodeSectors.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class RequestTimeFilterPostcodeSectors(
  departureUnderscoresearches: Option[List[RequestTimeFilterPostcodeSectorsDepartureSearch]],
  arrivalUnderscoresearches: Option[List[RequestTimeFilterPostcodeSectorsArrivalSearch]]
)

object RequestTimeFilterPostcodeSectors {
  implicit lazy val requestTimeFilterPostcodeSectorsJsonFormat: Format[RequestTimeFilterPostcodeSectors] = Json.format[RequestTimeFilterPostcodeSectors]
}

