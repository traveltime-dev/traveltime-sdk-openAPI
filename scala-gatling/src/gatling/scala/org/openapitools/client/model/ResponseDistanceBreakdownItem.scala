
package org.openapitools.client.model


case class ResponseDistanceBreakdownItem (
    _mode: ResponseTransportationMode,
    _distance: Integer
)
object ResponseDistanceBreakdownItem {
    def toStringBody(var_mode: Object, var_distance: Object) =
        s"""
        | {
        | "mode":$var_mode,"distance":$var_distance
        | }
        """.stripMargin
}
