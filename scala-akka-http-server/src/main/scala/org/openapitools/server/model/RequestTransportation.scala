package org.openapitools.server.model


/**
 * @param `type`  for example: ''null''
 * @param ptChangeDelay  for example: ''null''
 * @param walkingTime  for example: ''null''
 * @param drivingTimeToStation  for example: ''null''
 * @param parkingTime  for example: ''null''
 * @param boardingTime  for example: ''null''
*/
final case class RequestTransportation (
  `type`: String,
  ptChangeDelay: Option[Int],
  walkingTime: Option[Int],
  drivingTimeToStation: Option[Int],
  parkingTime: Option[Int],
  boardingTime: Option[Int]
)

