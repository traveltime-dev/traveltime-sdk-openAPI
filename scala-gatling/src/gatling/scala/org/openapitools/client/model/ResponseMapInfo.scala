
package org.openapitools.client.model


case class ResponseMapInfo (
    _maps: List[ResponseMapInfoMap]
)
object ResponseMapInfo {
    def toStringBody(var_maps: Object) =
        s"""
        | {
        | "maps":$var_maps
        | }
        """.stripMargin
}
