
package org.openapitools.client.model


case class RequestRangeFull (
    _enabled: Boolean,
    _maxUnderscoreresults: Integer,
    _width: Integer
)
object RequestRangeFull {
    def toStringBody(var_enabled: Object, var_maxUnderscoreresults: Object, var_width: Object) =
        s"""
        | {
        | "enabled":$var_enabled,"maxUnderscoreresults":$var_maxUnderscoreresults,"width":$var_width
        | }
        """.stripMargin
}
