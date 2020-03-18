
package org.openapitools.client.model


case class ResponseTimeFilterResult (
    _searchId: String,
    _locations: List[ResponseTimeFilterLocation],
    _unreachable: List[String]
)
object ResponseTimeFilterResult {
    def toStringBody(var_searchId: Object, var_locations: Object, var_unreachable: Object) =
        s"""
        | {
        | "searchId":$var_searchId,"locations":$var_locations,"unreachable":$var_unreachable
        | }
        """.stripMargin
}
