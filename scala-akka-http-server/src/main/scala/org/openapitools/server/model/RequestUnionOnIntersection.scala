package org.openapitools.server.model


/**
 * @param id  for example: ''null''
 * @param searchIds  for example: ''null''
*/
final case class RequestUnionOnIntersection (
  id: String,
  searchIds: Seq[String]
)

