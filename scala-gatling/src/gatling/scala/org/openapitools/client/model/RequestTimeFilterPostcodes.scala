
package org.openapitools.client.model


case class RequestTimeFilterPostcodes (
    _departureSearches: Option[List[RequestTimeFilterPostcodesDepartureSearch]],
    _arrivalSearches: Option[List[RequestTimeFilterPostcodesArrivalSearch]]
)
object RequestTimeFilterPostcodes {
    def toStringBody(var_departureSearches: Object, var_arrivalSearches: Object) =
        s"""
        | {
        | "departureSearches":$var_departureSearches,"arrivalSearches":$var_arrivalSearches
        | }
        """.stripMargin
}
