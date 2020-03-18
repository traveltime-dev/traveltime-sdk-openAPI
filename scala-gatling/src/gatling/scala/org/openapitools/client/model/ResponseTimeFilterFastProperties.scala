
package org.openapitools.client.model


case class ResponseTimeFilterFastProperties (
    _travelTime: Option[Integer],
    _fares: Option[ResponseFaresFast]
)
object ResponseTimeFilterFastProperties {
    def toStringBody(var_travelTime: Object, var_fares: Object) =
        s"""
        | {
        | "travelTime":$var_travelTime,"fares":$var_fares
        | }
        """.stripMargin
}
