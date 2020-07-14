package org.openapitools.server.model


/**
 * @param locations  for example: ''null''
 * @param departureSearches  for example: ''null''
 * @param arrivalSearches  for example: ''null''
*/
final case class RequestTimeFilter (
  locations: Seq[RequestLocation],
  departureSearches: Option[Seq[RequestTimeFilterDepartureSearch]],
  arrivalSearches: Option[Seq[RequestTimeFilterArrivalSearch]]
)

