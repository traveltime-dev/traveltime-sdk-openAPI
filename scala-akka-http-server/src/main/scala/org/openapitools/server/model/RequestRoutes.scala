package org.openapitools.server.model


/**
 * @param locations  for example: ''null''
 * @param departureSearches  for example: ''null''
 * @param arrivalSearches  for example: ''null''
*/
final case class RequestRoutes (
  locations: Seq[RequestLocation],
  departureSearches: Option[Seq[RequestRoutesDepartureSearch]],
  arrivalSearches: Option[Seq[RequestRoutesArrivalSearch]]
)

