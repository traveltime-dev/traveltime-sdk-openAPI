
package org.openapitools.client.model


case class ResponseTimeFilterProperties (
    _travelUnderscoretime: Option[Integer],
    _distance: Option[Integer],
    _distanceUnderscorebreakdown: Option[List[ResponseDistanceBreakdownItem]],
    _fares: Option[ResponseFares],
    _route: Option[ResponseRoute]
)
object ResponseTimeFilterProperties {
    def toStringBody(var_travelUnderscoretime: Object, var_distance: Object, var_distanceUnderscorebreakdown: Object, var_fares: Object, var_route: Object) =
        s"""
        | {
        | "travelUnderscoretime":$var_travelUnderscoretime,"distance":$var_distance,"distanceUnderscorebreakdown":$var_distanceUnderscorebreakdown,"fares":$var_fares,"route":$var_route
        | }
        """.stripMargin
}
