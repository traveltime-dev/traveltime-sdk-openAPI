
package org.openapitools.client.model


case class RequestTimeFilterPostcodeSectors (
    _departureSearches: Option[List[RequestTimeFilterPostcodeSectorsDepartureSearch]],
    _arrivalSearches: Option[List[RequestTimeFilterPostcodeSectorsArrivalSearch]]
)
object RequestTimeFilterPostcodeSectors {
    def toStringBody(var_departureSearches: Object, var_arrivalSearches: Object) =
        s"""
        | {
        | "departureSearches":$var_departureSearches,"arrivalSearches":$var_arrivalSearches
        | }
        """.stripMargin
}
