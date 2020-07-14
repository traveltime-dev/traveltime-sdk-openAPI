package org.openapitools.server.model

import java.time.OffsetDateTime

/**
 * @param id  for example: ''null''
 * @param departureLocationIds  for example: ''null''
 * @param arrivalLocationId  for example: ''null''
 * @param transportation  for example: ''null''
 * @param travelTime  for example: ''null''
 * @param arrivalTime  for example: ''null''
 * @param properties  for example: ''null''
 * @param range  for example: ''null''
*/
final case class RequestTimeFilterArrivalSearch (
  id: String,
  departureLocationIds: Seq[String],
  arrivalLocationId: String,
  transportation: RequestTransportation,
  travelTime: Int,
  arrivalTime: OffsetDateTime,
  properties: Seq[RequestTimeFilterProperty],
  range: Option[RequestRangeFull]
)

