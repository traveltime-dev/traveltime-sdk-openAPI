package org.openapitools.server.model


/**
 * @param searchId  for example: ''null''
 * @param locations  for example: ''null''
 * @param unreachable  for example: ''null''
*/
final case class ResponseTimeFilterFastResult (
  searchId: String,
  locations: Seq[ResponseTimeFilterFastLocation],
  unreachable: Seq[String]
)

