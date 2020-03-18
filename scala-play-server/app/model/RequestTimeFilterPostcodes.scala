package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilterPostcodes.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class RequestTimeFilterPostcodes(
  departureUnderscoresearches: Option[List[RequestTimeFilterPostcodesDepartureSearch]],
  arrivalUnderscoresearches: Option[List[RequestTimeFilterPostcodesArrivalSearch]]
)

object RequestTimeFilterPostcodes {
  implicit lazy val requestTimeFilterPostcodesJsonFormat: Format[RequestTimeFilterPostcodes] = Json.format[RequestTimeFilterPostcodes]
}

