package org.openapitools.server.model


/**
 * @param departureSearches  for example: ''null''
 * @param arrivalSearches  for example: ''null''
*/
final case class RequestTimeFilterPostcodeDistricts (
  departureSearches: Option[Seq[RequestTimeFilterPostcodeDistrictsDepartureSearch]],
  arrivalSearches: Option[Seq[RequestTimeFilterPostcodeDistrictsArrivalSearch]]
)

