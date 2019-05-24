package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilterPostcodeSectors.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class RequestTimeFilterPostcodeSectors(
  departureUnderscoresearches: Option[List[RequestTimeFilterPostcodeSectorsDepartureSearch]],
  arrivalUnderscoresearches: Option[List[RequestTimeFilterPostcodeSectorsArrivalSearch]]
)

object RequestTimeFilterPostcodeSectors {
  implicit lazy val requestTimeFilterPostcodeSectorsJsonFormat: Format[RequestTimeFilterPostcodeSectors] = Json.format[RequestTimeFilterPostcodeSectors]
}

