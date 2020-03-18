
package org.openapitools.client.model

import java.time.OffsetDateTime

case class ResponseRoute (
    _departureTime: OffsetDateTime,
    _arrivalTime: OffsetDateTime,
    _parts: List[ResponseRoutePart]
)
object ResponseRoute {
    def toStringBody(var_departureTime: Object, var_arrivalTime: Object, var_parts: Object) =
        s"""
        | {
        | "departureTime":$var_departureTime,"arrivalTime":$var_arrivalTime,"parts":$var_parts
        | }
        """.stripMargin
}
