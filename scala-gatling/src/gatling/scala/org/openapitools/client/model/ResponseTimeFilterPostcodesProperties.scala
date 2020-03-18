
package org.openapitools.client.model


case class ResponseTimeFilterPostcodesProperties (
    _travelTime: Option[Integer],
    _distance: Option[Integer]
)
object ResponseTimeFilterPostcodesProperties {
    def toStringBody(var_travelTime: Object, var_distance: Object) =
        s"""
        | {
        | "travelTime":$var_travelTime,"distance":$var_distance
        | }
        """.stripMargin
}
