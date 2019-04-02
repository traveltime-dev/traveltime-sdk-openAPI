
package org.openapitools.client.model


case class RequestTimeFilter (
    _locations: List[RequestLocation],
    _departureUnderscoresearches: Option[List[RequestTimeFilterDepartureSearch]],
    _arrivalUnderscoresearches: Option[List[RequestTimeFilterArrivalSearch]]
)
object RequestTimeFilter {
    def toStringBody(var_locations: Object, var_departureUnderscoresearches: Object, var_arrivalUnderscoresearches: Object) =
        s"""
        | {
        | "locations":$var_locations,"departureUnderscoresearches":$var_departureUnderscoresearches,"arrivalUnderscoresearches":$var_arrivalUnderscoresearches
        | }
        """.stripMargin
}
