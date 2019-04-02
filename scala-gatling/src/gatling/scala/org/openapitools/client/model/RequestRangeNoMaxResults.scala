
package org.openapitools.client.model


case class RequestRangeNoMaxResults (
    _enabled: Boolean,
    _width: Integer
)
object RequestRangeNoMaxResults {
    def toStringBody(var_enabled: Object, var_width: Object) =
        s"""
        | {
        | "enabled":$var_enabled,"width":$var_width
        | }
        """.stripMargin
}
