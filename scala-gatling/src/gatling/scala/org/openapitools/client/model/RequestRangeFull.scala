
package org.openapitools.client.model


case class RequestRangeFull (
    _enabled: Boolean,
    _maxResults: Integer,
    _width: Integer
)
object RequestRangeFull {
    def toStringBody(var_enabled: Object, var_maxResults: Object, var_width: Object) =
        s"""
        | {
        | "enabled":$var_enabled,"maxResults":$var_maxResults,"width":$var_width
        | }
        """.stripMargin
}
