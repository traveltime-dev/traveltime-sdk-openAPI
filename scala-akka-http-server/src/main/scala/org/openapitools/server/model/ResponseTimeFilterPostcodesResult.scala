package org.openapitools.server.model


/**
 * @param searchId  for example: ''null''
 * @param postcodes  for example: ''null''
*/
final case class ResponseTimeFilterPostcodesResult (
  searchId: String,
  postcodes: Seq[ResponseTimeFilterPostcode]
)

