package org.openapitools.server.model


/**
 * @param travelTime  for example: ''null''
 * @param fares  for example: ''null''
*/
final case class ResponseTimeFilterFastProperties (
  travelTime: Option[Int],
  fares: Option[ResponseFaresFast]
)

