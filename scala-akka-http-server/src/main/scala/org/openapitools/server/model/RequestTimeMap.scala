package org.openapitools.server.model


/**
 * @param departureSearches  for example: ''null''
 * @param arrivalSearches  for example: ''null''
 * @param unions  for example: ''null''
 * @param intersections  for example: ''null''
*/
final case class RequestTimeMap (
  departureSearches: Option[Seq[RequestTimeMapDepartureSearch]],
  arrivalSearches: Option[Seq[RequestTimeMapArrivalSearch]],
  unions: Option[Seq[RequestUnionOnIntersection]],
  intersections: Option[Seq[RequestUnionOnIntersection]]
)

