
package org.openapitools.client.model

import java.util.Date

case class ResponseRoute (
    _departureUnderscoretime: Date,
    _arrivalUnderscoretime: Date,
    _parts: List[ResponseRoutePart]
)
object ResponseRoute {
    def toStringBody(var_departureUnderscoretime: Object, var_arrivalUnderscoretime: Object, var_parts: Object) =
        s"""
        | {
        | "departureUnderscoretime":$var_departureUnderscoretime,"arrivalUnderscoretime":$var_arrivalUnderscoretime,"parts":$var_parts
        | }
        """.stripMargin
}
