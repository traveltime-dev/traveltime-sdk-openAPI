
package org.openapitools.client.model


case class ResponseFaresFast (
    _ticketsTotal: List[ResponseFareTicket]
)
object ResponseFaresFast {
    def toStringBody(var_ticketsTotal: Object) =
        s"""
        | {
        | "ticketsTotal":$var_ticketsTotal
        | }
        """.stripMargin
}
