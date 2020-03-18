
package org.openapitools.client.model


case class ResponseRoutesProperties (
    _travelTime: Option[Integer],
    _distance: Option[Integer],
    _fares: Option[ResponseFares],
    _route: Option[ResponseRoute]
)
object ResponseRoutesProperties {
    def toStringBody(var_travelTime: Object, var_distance: Object, var_fares: Object, var_route: Object) =
        s"""
        | {
        | "travelTime":$var_travelTime,"distance":$var_distance,"fares":$var_fares,"route":$var_route
        | }
        """.stripMargin
}
