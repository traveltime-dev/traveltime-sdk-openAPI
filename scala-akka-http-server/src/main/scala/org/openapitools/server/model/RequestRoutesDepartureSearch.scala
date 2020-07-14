package org.openapitools.server.model

import java.time.OffsetDateTime

/**
 * @param id  for example: ''null''
 * @param departureLocationId  for example: ''null''
 * @param arrivalLocationIds  for example: ''null''
 * @param transportation  for example: ''null''
 * @param departureTime  for example: ''null''
 * @param properties  for example: ''null''
 * @param range  for example: ''null''
*/
final case class RequestRoutesDepartureSearch (
  id: String,
  departureLocationId: String,
  arrivalLocationIds: Seq[String],
  transportation: RequestTransportation,
  departureTime: OffsetDateTime,
  properties: Seq[RequestRoutesProperty],
  range: Option[RequestRangeFull]
)

