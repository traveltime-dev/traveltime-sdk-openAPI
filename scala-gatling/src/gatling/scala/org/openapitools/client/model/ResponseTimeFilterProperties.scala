
package org.openapitools.client.model


case class ResponseTimeFilterProperties (
    _travelTime: Option[Integer],
    _distance: Option[Integer],
    _distanceBreakdown: Option[List[ResponseDistanceBreakdownItem]],
    _fares: Option[ResponseFares],
    _route: Option[ResponseRoute]
)
object ResponseTimeFilterProperties {
    def toStringBody(var_travelTime: Object, var_distance: Object, var_distanceBreakdown: Object, var_fares: Object, var_route: Object) =
        s"""
        | {
        | "travelTime":$var_travelTime,"distance":$var_distance,"distanceBreakdown":$var_distanceBreakdown,"fares":$var_fares,"route":$var_route
        | }
        """.stripMargin
}
