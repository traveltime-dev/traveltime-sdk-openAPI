
package org.openapitools.client.model


case class RequestTimeMap (
    _departureSearches: Option[List[RequestTimeMapDepartureSearch]],
    _arrivalSearches: Option[List[RequestTimeMapArrivalSearch]],
    _unions: Option[List[RequestUnionOnIntersection]],
    _intersections: Option[List[RequestUnionOnIntersection]]
)
object RequestTimeMap {
    def toStringBody(var_departureSearches: Object, var_arrivalSearches: Object, var_unions: Object, var_intersections: Object) =
        s"""
        | {
        | "departureSearches":$var_departureSearches,"arrivalSearches":$var_arrivalSearches,"unions":$var_unions,"intersections":$var_intersections
        | }
        """.stripMargin
}
