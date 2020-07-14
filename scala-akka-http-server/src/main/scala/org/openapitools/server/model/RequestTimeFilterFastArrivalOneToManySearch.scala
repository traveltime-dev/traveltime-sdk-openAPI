package org.openapitools.server.model


/**
 * @param id  for example: ''null''
 * @param departureLocationId  for example: ''null''
 * @param arrivalLocationIds  for example: ''null''
 * @param transportation  for example: ''null''
 * @param travelTime  for example: ''null''
 * @param arrivalTimePeriod  for example: ''null''
 * @param properties  for example: ''null''
*/
final case class RequestTimeFilterFastArrivalOneToManySearch (
  id: String,
  departureLocationId: String,
  arrivalLocationIds: Seq[String],
  transportation: RequestTransportationFast,
  travelTime: Int,
  arrivalTimePeriod: RequestArrivalTimePeriod,
  properties: Seq[RequestTimeFilterFastProperty]
)

