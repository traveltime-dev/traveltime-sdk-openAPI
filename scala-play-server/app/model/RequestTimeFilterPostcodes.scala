package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilterPostcodes.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class RequestTimeFilterPostcodes(
  departureSearches: Option[List[RequestTimeFilterPostcodesDepartureSearch]],
  arrivalSearches: Option[List[RequestTimeFilterPostcodesArrivalSearch]]
)

object RequestTimeFilterPostcodes {
  implicit lazy val requestTimeFilterPostcodesJsonFormat: Format[RequestTimeFilterPostcodes] = Json.format[RequestTimeFilterPostcodes]
}

