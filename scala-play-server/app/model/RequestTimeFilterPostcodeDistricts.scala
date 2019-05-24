package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilterPostcodeDistricts.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class RequestTimeFilterPostcodeDistricts(
  departureUnderscoresearches: Option[List[RequestTimeFilterPostcodeDistrictsDepartureSearch]],
  arrivalUnderscoresearches: Option[List[RequestTimeFilterPostcodeDistrictsArrivalSearch]]
)

object RequestTimeFilterPostcodeDistricts {
  implicit lazy val requestTimeFilterPostcodeDistrictsJsonFormat: Format[RequestTimeFilterPostcodeDistricts] = Json.format[RequestTimeFilterPostcodeDistricts]
}

