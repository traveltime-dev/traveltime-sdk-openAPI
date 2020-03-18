
package org.openapitools.client.model


case class RequestTimeFilterPostcodeDistricts (
    _departureSearches: Option[List[RequestTimeFilterPostcodeDistrictsDepartureSearch]],
    _arrivalSearches: Option[List[RequestTimeFilterPostcodeDistrictsArrivalSearch]]
)
object RequestTimeFilterPostcodeDistricts {
    def toStringBody(var_departureSearches: Object, var_arrivalSearches: Object) =
        s"""
        | {
        | "departureSearches":$var_departureSearches,"arrivalSearches":$var_arrivalSearches
        | }
        """.stripMargin
}
