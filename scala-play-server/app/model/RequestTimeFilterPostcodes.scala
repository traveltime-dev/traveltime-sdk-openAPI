package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilterPostcodes.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class RequestTimeFilterPostcodes(
  departureUnderscoresearches: Option[List[RequestTimeFilterPostcodesDepartureSearch]],
  arrivalUnderscoresearches: Option[List[RequestTimeFilterPostcodesArrivalSearch]]
)

object RequestTimeFilterPostcodes {
  implicit lazy val requestTimeFilterPostcodesJsonFormat: Format[RequestTimeFilterPostcodes] = Json.format[RequestTimeFilterPostcodes]
}

