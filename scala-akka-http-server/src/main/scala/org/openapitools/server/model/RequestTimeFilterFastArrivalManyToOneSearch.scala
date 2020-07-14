package org.openapitools.server.model


/**
 * @param id  for example: ''null''
 * @param arrivalLocationId  for example: ''null''
 * @param departureLocationIds  for example: ''null''
 * @param transportation  for example: ''null''
 * @param travelTime  for example: ''null''
 * @param arrivalTimePeriod  for example: ''null''
 * @param properties  for example: ''null''
*/
final case class RequestTimeFilterFastArrivalManyToOneSearch (
  id: String,
  arrivalLocationId: String,
  departureLocationIds: Seq[String],
  transportation: RequestTransportationFast,
  travelTime: Int,
  arrivalTimePeriod: RequestArrivalTimePeriod,
  properties: Seq[RequestTimeFilterFastProperty]
)

