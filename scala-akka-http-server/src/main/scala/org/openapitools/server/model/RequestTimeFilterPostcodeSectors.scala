package org.openapitools.server.model


/**
 * @param departureSearches  for example: ''null''
 * @param arrivalSearches  for example: ''null''
*/
final case class RequestTimeFilterPostcodeSectors (
  departureSearches: Option[Seq[RequestTimeFilterPostcodeSectorsDepartureSearch]],
  arrivalSearches: Option[Seq[RequestTimeFilterPostcodeSectorsArrivalSearch]]
)

