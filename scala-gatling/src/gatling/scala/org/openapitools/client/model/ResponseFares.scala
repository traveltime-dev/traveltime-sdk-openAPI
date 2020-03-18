
package org.openapitools.client.model


case class ResponseFares (
    _breakdown: List[ResponseFaresBreakdownItem],
    _ticketsTotal: List[ResponseFareTicket]
)
object ResponseFares {
    def toStringBody(var_breakdown: Object, var_ticketsTotal: Object) =
        s"""
        | {
        | "breakdown":$var_breakdown,"ticketsTotal":$var_ticketsTotal
        | }
        """.stripMargin
}
