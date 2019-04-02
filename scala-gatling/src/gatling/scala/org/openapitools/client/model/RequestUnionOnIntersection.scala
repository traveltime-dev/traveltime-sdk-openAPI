
package org.openapitools.client.model


case class RequestUnionOnIntersection (
    _id: String,
    _searchUnderscoreids: List[String]
)
object RequestUnionOnIntersection {
    def toStringBody(var_id: Object, var_searchUnderscoreids: Object) =
        s"""
        | {
        | "id":$var_id,"searchUnderscoreids":$var_searchUnderscoreids
        | }
        """.stripMargin
}
