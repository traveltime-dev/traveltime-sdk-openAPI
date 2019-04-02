
package org.openapitools.client.model


case class RequestRoutes (
    _locations: List[RequestLocation],
    _departureUnderscoresearches: Option[List[RequestRoutesDepartureSearch]],
    _arrivalUnderscoresearches: Option[List[RequestRoutesArrivalSearch]]
)
object RequestRoutes {
    def toStringBody(var_locations: Object, var_departureUnderscoresearches: Object, var_arrivalUnderscoresearches: Object) =
        s"""
        | {
        | "locations":$var_locations,"departureUnderscoresearches":$var_departureUnderscoresearches,"arrivalUnderscoresearches":$var_arrivalUnderscoresearches
        | }
        """.stripMargin
}
