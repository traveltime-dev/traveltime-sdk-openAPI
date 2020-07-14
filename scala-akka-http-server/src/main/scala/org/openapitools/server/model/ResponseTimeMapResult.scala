package org.openapitools.server.model


/**
 * @param searchId  for example: ''null''
 * @param shapes  for example: ''null''
 * @param properties  for example: ''null''
*/
final case class ResponseTimeMapResult (
  searchId: String,
  shapes: Seq[ResponseShape],
  properties: ResponseTimeMapProperties
)

