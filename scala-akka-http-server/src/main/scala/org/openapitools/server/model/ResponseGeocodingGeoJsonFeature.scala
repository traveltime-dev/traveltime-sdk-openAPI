package org.openapitools.server.model


/**
 * @param `type`  for example: ''null''
 * @param geometry  for example: ''null''
 * @param properties  for example: ''null''
*/
final case class ResponseGeocodingGeoJsonFeature (
  `type`: String,
  geometry: ResponseGeocodingGeometry,
  properties: ResponseGeocodingProperties
)

