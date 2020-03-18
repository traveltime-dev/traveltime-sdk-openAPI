package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilterPostcodeDistricts.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class RequestTimeFilterPostcodeDistricts(
  departureUnderscoresearches: Option[List[RequestTimeFilterPostcodeDistrictsDepartureSearch]],
  arrivalUnderscoresearches: Option[List[RequestTimeFilterPostcodeDistrictsArrivalSearch]]
)

object RequestTimeFilterPostcodeDistricts {
  implicit lazy val requestTimeFilterPostcodeDistrictsJsonFormat: Format[RequestTimeFilterPostcodeDistricts] = Json.format[RequestTimeFilterPostcodeDistricts]
}

