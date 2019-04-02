
package org.openapitools.client.model


case class ResponseTimeFilterResult (
    _searchUnderscoreid: String,
    _locations: List[ResponseTimeFilterLocation],
    _unreachable: List[String]
)
object ResponseTimeFilterResult {
    def toStringBody(var_searchUnderscoreid: Object, var_locations: Object, var_unreachable: Object) =
        s"""
        | {
        | "searchUnderscoreid":$var_searchUnderscoreid,"locations":$var_locations,"unreachable":$var_unreachable
        | }
        """.stripMargin
}
