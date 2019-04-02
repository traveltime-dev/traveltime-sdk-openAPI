
package org.openapitools.client.model


case class RequestTimeFilterPostcodeDistricts (
    _departureUnderscoresearches: Option[List[RequestTimeFilterPostcodeDistrictsDepartureSearch]],
    _arrivalUnderscoresearches: Option[List[RequestTimeFilterPostcodeDistrictsArrivalSearch]]
)
object RequestTimeFilterPostcodeDistricts {
    def toStringBody(var_departureUnderscoresearches: Object, var_arrivalUnderscoresearches: Object) =
        s"""
        | {
        | "departureUnderscoresearches":$var_departureUnderscoresearches,"arrivalUnderscoresearches":$var_arrivalUnderscoresearches
        | }
        """.stripMargin
}
