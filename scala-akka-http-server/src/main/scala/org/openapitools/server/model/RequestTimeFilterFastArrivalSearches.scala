package org.openapitools.server.model


/**
 * @param manyToOne  for example: ''null''
 * @param oneToMany  for example: ''null''
*/
final case class RequestTimeFilterFastArrivalSearches (
  manyToOne: Option[Seq[RequestTimeFilterFastArrivalManyToOneSearch]],
  oneToMany: Option[Seq[RequestTimeFilterFastArrivalOneToManySearch]]
)

