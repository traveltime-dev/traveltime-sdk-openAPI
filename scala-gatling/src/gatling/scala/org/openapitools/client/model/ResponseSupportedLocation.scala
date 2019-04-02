
package org.openapitools.client.model


case class ResponseSupportedLocation (
    _id: String,
    _mapUnderscorename: String
)
object ResponseSupportedLocation {
    def toStringBody(var_id: Object, var_mapUnderscorename: Object) =
        s"""
        | {
        | "id":$var_id,"mapUnderscorename":$var_mapUnderscorename
        | }
        """.stripMargin
}
