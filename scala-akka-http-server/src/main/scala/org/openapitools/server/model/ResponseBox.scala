package org.openapitools.server.model


/**
 * @param minLat  for example: ''null''
 * @param maxLat  for example: ''null''
 * @param minLng  for example: ''null''
 * @param maxLng  for example: ''null''
*/
final case class ResponseBox (
  minLat: Double,
  maxLat: Double,
  minLng: Double,
  maxLng: Double
)

