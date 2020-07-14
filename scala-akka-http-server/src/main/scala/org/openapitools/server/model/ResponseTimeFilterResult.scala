package org.openapitools.server.model


/**
 * @param searchId  for example: ''null''
 * @param locations  for example: ''null''
 * @param unreachable  for example: ''null''
*/
final case class ResponseTimeFilterResult (
  searchId: String,
  locations: Seq[ResponseTimeFilterLocation],
  unreachable: Seq[String]
)

