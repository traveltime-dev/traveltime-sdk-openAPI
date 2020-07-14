package org.openapitools.server.model


/**
 * @param breakdown  for example: ''null''
 * @param ticketsTotal  for example: ''null''
*/
final case class ResponseFares (
  breakdown: Seq[ResponseFaresBreakdownItem],
  ticketsTotal: Seq[ResponseFareTicket]
)

