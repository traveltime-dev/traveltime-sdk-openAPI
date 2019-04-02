
package org.openapitools.client.model


case class RequestTimeFilterFast (
    _locations: List[RequestLocation],
    _arrivalUnderscoresearches: RequestTimeFilterFastArrivalSearches
)
object RequestTimeFilterFast {
    def toStringBody(var_locations: Object, var_arrivalUnderscoresearches: Object) =
        s"""
        | {
        | "locations":$var_locations,"arrivalUnderscoresearches":$var_arrivalUnderscoresearches
        | }
        """.stripMargin
}
