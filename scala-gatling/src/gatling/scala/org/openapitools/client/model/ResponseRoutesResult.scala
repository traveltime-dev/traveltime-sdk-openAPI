
package org.openapitools.client.model


case class ResponseRoutesResult (
    _searchUnderscoreid: String,
    _locations: List[ResponseRoutesLocation],
    _unreachable: List[String]
)
object ResponseRoutesResult {
    def toStringBody(var_searchUnderscoreid: Object, var_locations: Object, var_unreachable: Object) =
        s"""
        | {
        | "searchUnderscoreid":$var_searchUnderscoreid,"locations":$var_locations,"unreachable":$var_unreachable
        | }
        """.stripMargin
}
