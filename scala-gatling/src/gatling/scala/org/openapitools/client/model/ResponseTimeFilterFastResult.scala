
package org.openapitools.client.model


case class ResponseTimeFilterFastResult (
    _searchUnderscoreid: String,
    _locations: List[ResponseTimeFilterFastLocation],
    _unreachable: List[String]
)
object ResponseTimeFilterFastResult {
    def toStringBody(var_searchUnderscoreid: Object, var_locations: Object, var_unreachable: Object) =
        s"""
        | {
        | "searchUnderscoreid":$var_searchUnderscoreid,"locations":$var_locations,"unreachable":$var_unreachable
        | }
        """.stripMargin
}
