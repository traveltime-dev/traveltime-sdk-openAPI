
package org.openapitools.client.model


case class ResponseSupportedLocation (
    _id: String,
    _mapName: String
)
object ResponseSupportedLocation {
    def toStringBody(var_id: Object, var_mapName: Object) =
        s"""
        | {
        | "id":$var_id,"mapName":$var_mapName
        | }
        """.stripMargin
}
