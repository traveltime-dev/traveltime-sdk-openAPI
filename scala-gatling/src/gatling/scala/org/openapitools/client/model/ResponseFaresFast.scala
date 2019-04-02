
package org.openapitools.client.model


case class ResponseFaresFast (
    _ticketsUnderscoretotal: List[ResponseFareTicket]
)
object ResponseFaresFast {
    def toStringBody(var_ticketsUnderscoretotal: Object) =
        s"""
        | {
        | "ticketsUnderscoretotal":$var_ticketsUnderscoretotal
        | }
        """.stripMargin
}
