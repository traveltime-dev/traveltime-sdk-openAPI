package org.openapitools.server.model


/**
 * @param travelTime  for example: ''null''
 * @param distance  for example: ''null''
 * @param distanceBreakdown  for example: ''null''
 * @param fares  for example: ''null''
 * @param route  for example: ''null''
*/
final case class ResponseTimeFilterProperties (
  travelTime: Option[Int],
  distance: Option[Int],
  distanceBreakdown: Option[Seq[ResponseDistanceBreakdownItem]],
  fares: Option[ResponseFares],
  route: Option[ResponseRoute]
)

