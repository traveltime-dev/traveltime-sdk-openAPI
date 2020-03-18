
package org.openapitools.client.model


case class RequestRoutes (
    _locations: List[RequestLocation],
    _departureSearches: Option[List[RequestRoutesDepartureSearch]],
    _arrivalSearches: Option[List[RequestRoutesArrivalSearch]]
)
object RequestRoutes {
    def toStringBody(var_locations: Object, var_departureSearches: Object, var_arrivalSearches: Object) =
        s"""
        | {
        | "locations":$var_locations,"departureSearches":$var_departureSearches,"arrivalSearches":$var_arrivalSearches
        | }
        """.stripMargin
}
