package org.openapitools.server.model


/**
 * @param locations  for example: ''null''
 * @param arrivalSearches  for example: ''null''
*/
final case class RequestTimeFilterFast (
  locations: Seq[RequestLocation],
  arrivalSearches: RequestTimeFilterFastArrivalSearches
)

