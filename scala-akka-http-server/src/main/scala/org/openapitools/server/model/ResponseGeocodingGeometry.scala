package org.openapitools.server.model


/**
 * @param `type`  for example: ''null''
 * @param coordinates  for example: ''null''
*/
final case class ResponseGeocodingGeometry (
  `type`: String,
  coordinates: Seq[Double]
)

