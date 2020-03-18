
package org.openapitools.client.model


case class ResponseTimeFilterFastResult (
    _searchId: String,
    _locations: List[ResponseTimeFilterFastLocation],
    _unreachable: List[String]
)
object ResponseTimeFilterFastResult {
    def toStringBody(var_searchId: Object, var_locations: Object, var_unreachable: Object) =
        s"""
        | {
        | "searchId":$var_searchId,"locations":$var_locations,"unreachable":$var_unreachable
        | }
        """.stripMargin
}
