
package org.openapitools.client.model


case class RequestUnionOnIntersection (
    _id: String,
    _searchIds: List[String]
)
object RequestUnionOnIntersection {
    def toStringBody(var_id: Object, var_searchIds: Object) =
        s"""
        | {
        | "id":$var_id,"searchIds":$var_searchIds
        | }
        """.stripMargin
}
