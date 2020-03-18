
package org.openapitools.client.model


case class ResponseTimeFilterPostcodeDistrictProperties (
    _travelTimeReachable: Option[ResponseTravelTimeStatistics],
    _travelTimeAll: Option[ResponseTravelTimeStatistics],
    _coverage: Option[Double]
)
object ResponseTimeFilterPostcodeDistrictProperties {
    def toStringBody(var_travelTimeReachable: Object, var_travelTimeAll: Object, var_coverage: Object) =
        s"""
        | {
        | "travelTimeReachable":$var_travelTimeReachable,"travelTimeAll":$var_travelTimeAll,"coverage":$var_coverage
        | }
        """.stripMargin
}
