package org.openapitools.server.model


/**
 * @param min  for example: ''null''
 * @param max  for example: ''null''
 * @param mean  for example: ''null''
 * @param median  for example: ''null''
*/
final case class ResponseTravelTimeStatistics (
  min: Int,
  max: Int,
  mean: Int,
  median: Int
)

