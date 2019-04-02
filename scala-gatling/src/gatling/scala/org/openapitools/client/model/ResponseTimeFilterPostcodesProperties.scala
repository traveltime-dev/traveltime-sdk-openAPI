
package org.openapitools.client.model


case class ResponseTimeFilterPostcodesProperties (
    _travelUnderscoretime: Option[Integer],
    _distance: Option[Integer]
)
object ResponseTimeFilterPostcodesProperties {
    def toStringBody(var_travelUnderscoretime: Object, var_distance: Object) =
        s"""
        | {
        | "travelUnderscoretime":$var_travelUnderscoretime,"distance":$var_distance
        | }
        """.stripMargin
}
