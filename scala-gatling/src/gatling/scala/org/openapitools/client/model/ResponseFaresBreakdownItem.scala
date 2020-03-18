
package org.openapitools.client.model


case class ResponseFaresBreakdownItem (
    _modes: List[ResponseTransportationMode],
    _routePartIds: List[Integer],
    _tickets: List[ResponseFareTicket]
)
object ResponseFaresBreakdownItem {
    def toStringBody(var_modes: Object, var_routePartIds: Object, var_tickets: Object) =
        s"""
        | {
        | "modes":$var_modes,"routePartIds":$var_routePartIds,"tickets":$var_tickets
        | }
        """.stripMargin
}
