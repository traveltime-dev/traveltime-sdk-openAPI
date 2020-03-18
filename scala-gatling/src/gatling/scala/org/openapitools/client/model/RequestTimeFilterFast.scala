
package org.openapitools.client.model


case class RequestTimeFilterFast (
    _locations: List[RequestLocation],
    _arrivalSearches: RequestTimeFilterFastArrivalSearches
)
object RequestTimeFilterFast {
    def toStringBody(var_locations: Object, var_arrivalSearches: Object) =
        s"""
        | {
        | "locations":$var_locations,"arrivalSearches":$var_arrivalSearches
        | }
        """.stripMargin
}
