package org.openapitools.server.model

import java.time.OffsetDateTime

/**
 * @param departureTime  for example: ''null''
 * @param arrivalTime  for example: ''null''
 * @param parts  for example: ''null''
*/
final case class ResponseRoute (
  departureTime: OffsetDateTime,
  arrivalTime: OffsetDateTime,
  parts: Seq[ResponseRoutePart]
)

