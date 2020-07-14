package org.openapitools.server.model


/**
 * @param searchId  for example: ''null''
 * @param sectors  for example: ''null''
*/
final case class ResponseTimeFilterPostcodeSectorsResult (
  searchId: String,
  sectors: Seq[ResponseTimeFilterPostcodeSector]
)

