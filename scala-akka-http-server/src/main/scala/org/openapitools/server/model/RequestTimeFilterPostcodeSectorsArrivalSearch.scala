package org.openapitools.server.model

import java.time.OffsetDateTime

/**
 * @param id  for example: ''null''
 * @param transportation  for example: ''null''
 * @param travelTime  for example: ''null''
 * @param arrivalTime  for example: ''null''
 * @param reachablePostcodesThreshold  for example: ''null''
 * @param properties  for example: ''null''
 * @param range  for example: ''null''
*/
final case class RequestTimeFilterPostcodeSectorsArrivalSearch (
  id: String,
  transportation: RequestTransportation,
  travelTime: Int,
  arrivalTime: OffsetDateTime,
  reachablePostcodesThreshold: Double,
  properties: Seq[RequestTimeFilterPostcodeSectorsProperty],
  range: Option[RequestRangeFull]
)

