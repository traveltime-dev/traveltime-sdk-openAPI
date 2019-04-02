
package org.openapitools.client.model


case class ResponseFares (
    _breakdown: List[ResponseFaresBreakdownItem],
    _ticketsUnderscoretotal: List[ResponseFareTicket]
)
object ResponseFares {
    def toStringBody(var_breakdown: Object, var_ticketsUnderscoretotal: Object) =
        s"""
        | {
        | "breakdown":$var_breakdown,"ticketsUnderscoretotal":$var_ticketsUnderscoretotal
        | }
        """.stripMargin
}
