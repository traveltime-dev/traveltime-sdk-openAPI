package org.openapitools.server.model


/**
 * @param envelope  for example: ''null''
 * @param boxes  for example: ''null''
*/
final case class ResponseBoundingBox (
  envelope: ResponseBox,
  boxes: Seq[ResponseBox]
)

