
package org.openapitools.client.model


case class RequestTimeMap (
    _departureUnderscoresearches: Option[List[RequestTimeMapDepartureSearch]],
    _arrivalUnderscoresearches: Option[List[RequestTimeMapArrivalSearch]],
    _unions: Option[List[RequestUnionOnIntersection]],
    _intersections: Option[List[RequestUnionOnIntersection]]
)
object RequestTimeMap {
    def toStringBody(var_departureUnderscoresearches: Object, var_arrivalUnderscoresearches: Object, var_unions: Object, var_intersections: Object) =
        s"""
        | {
        | "departureUnderscoresearches":$var_departureUnderscoresearches,"arrivalUnderscoresearches":$var_arrivalUnderscoresearches,"unions":$var_unions,"intersections":$var_intersections
        | }
        """.stripMargin
}
