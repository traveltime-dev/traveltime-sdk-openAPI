package org.openapitools.server.model


/**
 * @param travelTimeReachable  for example: ''null''
 * @param travelTimeAll  for example: ''null''
 * @param coverage  for example: ''null''
*/
final case class ResponseTimeFilterPostcodeDistrictProperties (
  travelTimeReachable: Option[ResponseTravelTimeStatistics],
  travelTimeAll: Option[ResponseTravelTimeStatistics],
  coverage: Option[Double]
)

