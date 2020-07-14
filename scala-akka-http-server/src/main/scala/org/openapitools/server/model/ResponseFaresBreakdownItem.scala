package org.openapitools.server.model


/**
 * @param modes  for example: ''null''
 * @param routePartIds  for example: ''null''
 * @param tickets  for example: ''null''
*/
final case class ResponseFaresBreakdownItem (
  modes: Seq[ResponseTransportationMode],
  routePartIds: Seq[Int],
  tickets: Seq[ResponseFareTicket]
)

