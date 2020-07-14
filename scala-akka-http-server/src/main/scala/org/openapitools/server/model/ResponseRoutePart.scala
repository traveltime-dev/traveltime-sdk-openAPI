package org.openapitools.server.model


/**
 * @param id  for example: ''null''
 * @param `type`  for example: ''null''
 * @param mode  for example: ''null''
 * @param directions  for example: ''null''
 * @param distance  for example: ''null''
 * @param travelTime  for example: ''null''
 * @param coords  for example: ''null''
 * @param direction  for example: ''null''
 * @param road  for example: ''null''
 * @param turn  for example: ''null''
 * @param line  for example: ''null''
 * @param departureStation  for example: ''null''
 * @param arrivalStation  for example: ''null''
 * @param departsAt  for example: ''null''
 * @param arrivesAt  for example: ''null''
 * @param numStops  for example: ''null''
*/
final case class ResponseRoutePart (
  id: String,
  `type`: String,
  mode: ResponseTransportationMode,
  directions: String,
  distance: Int,
  travelTime: Int,
  coords: Seq[Coords],
  direction: Option[String],
  road: Option[String],
  turn: Option[String],
  line: Option[String],
  departureStation: Option[String],
  arrivalStation: Option[String],
  departsAt: Option[String],
  arrivesAt: Option[String],
  numStops: Option[Int]
)

