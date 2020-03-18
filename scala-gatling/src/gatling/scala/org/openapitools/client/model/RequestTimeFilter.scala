
package org.openapitools.client.model


case class RequestTimeFilter (
    _locations: List[RequestLocation],
    _departureSearches: Option[List[RequestTimeFilterDepartureSearch]],
    _arrivalSearches: Option[List[RequestTimeFilterArrivalSearch]]
)
object RequestTimeFilter {
    def toStringBody(var_locations: Object, var_departureSearches: Object, var_arrivalSearches: Object) =
        s"""
        | {
        | "locations":$var_locations,"departureSearches":$var_departureSearches,"arrivalSearches":$var_arrivalSearches
        | }
        """.stripMargin
}
