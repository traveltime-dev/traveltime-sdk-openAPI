package org.openapitools.server.model


/**
 * @param `type`  for example: ''null''
 * @param features  for example: ''null''
*/
final case class ResponseGeocoding (
  `type`: String,
  features: Seq[ResponseGeocodingGeoJsonFeature]
)

