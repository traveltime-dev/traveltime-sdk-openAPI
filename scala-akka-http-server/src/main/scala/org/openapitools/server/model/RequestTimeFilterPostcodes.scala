package org.openapitools.server.model


/**
 * @param departureSearches  for example: ''null''
 * @param arrivalSearches  for example: ''null''
*/
final case class RequestTimeFilterPostcodes (
  departureSearches: Option[Seq[RequestTimeFilterPostcodesDepartureSearch]],
  arrivalSearches: Option[Seq[RequestTimeFilterPostcodesArrivalSearch]]
)

