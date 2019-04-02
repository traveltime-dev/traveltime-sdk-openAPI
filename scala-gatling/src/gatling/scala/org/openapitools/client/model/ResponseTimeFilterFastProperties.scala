
package org.openapitools.client.model


case class ResponseTimeFilterFastProperties (
    _travelUnderscoretime: Option[Integer],
    _fares: Option[ResponseFaresFast]
)
object ResponseTimeFilterFastProperties {
    def toStringBody(var_travelUnderscoretime: Object, var_fares: Object) =
        s"""
        | {
        | "travelUnderscoretime":$var_travelUnderscoretime,"fares":$var_fares
        | }
        """.stripMargin
}
