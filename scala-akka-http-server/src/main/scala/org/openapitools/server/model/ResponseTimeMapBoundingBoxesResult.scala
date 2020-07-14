package org.openapitools.server.model


/**
 * @param searchId  for example: ''null''
 * @param boundingBoxes  for example: ''null''
 * @param properties  for example: ''null''
*/
final case class ResponseTimeMapBoundingBoxesResult (
  searchId: String,
  boundingBoxes: Seq[ResponseBoundingBox],
  properties: ResponseTimeMapProperties
)

