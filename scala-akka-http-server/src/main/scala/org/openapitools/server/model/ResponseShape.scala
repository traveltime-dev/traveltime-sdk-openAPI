package org.openapitools.server.model


/**
 * @param shell  for example: ''null''
 * @param holes  for example: ''null''
*/
final case class ResponseShape (
  shell: Seq[Coords],
  holes: Seq[Seq[Coords]]
)

