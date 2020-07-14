package org.openapitools.server.model

import java.time.OffsetDateTime

/**
 * @param id  for example: ''null''
 * @param departureLocationIds  for example: ''null''
 * @param arrivalLocationId  for example: ''null''
 * @param transportation  for example: ''null''
 * @param arrivalTime  for example: ''null''
 * @param properties  for example: ''null''
 * @param range  for example: ''null''
*/
final case class RequestRoutesArrivalSearch (
  id: String,
  departureLocationIds: Seq[String],
  arrivalLocationId: String,
  transportation: RequestTransportation,
  arrivalTime: OffsetDateTime,
  properties: Seq[RequestRoutesProperty],
  range: Option[RequestRangeFull]
)

