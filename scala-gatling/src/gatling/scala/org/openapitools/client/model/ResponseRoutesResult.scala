
package org.openapitools.client.model


case class ResponseRoutesResult (
    _searchId: String,
    _locations: List[ResponseRoutesLocation],
    _unreachable: List[String]
)
object ResponseRoutesResult {
    def toStringBody(var_searchId: Object, var_locations: Object, var_unreachable: Object) =
        s"""
        | {
        | "searchId":$var_searchId,"locations":$var_locations,"unreachable":$var_unreachable
        | }
        """.stripMargin
}
