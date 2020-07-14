package org.openapitools.server.model


/**
 * @param publicTransport  for example: ''null''
 * @param fares  for example: ''null''
 * @param postcodes  for example: ''null''
*/
final case class ResponseMapInfoFeatures (
  publicTransport: Option[ResponseMapInfoFeaturesPublicTransport],
  fares: Boolean,
  postcodes: Boolean
)

