package org.openapitools.server.model


/**
 * @param searchId  for example: ''null''
 * @param districts  for example: ''null''
*/
final case class ResponseTimeFilterPostcodeDistrictsResult (
  searchId: String,
  districts: Seq[ResponseTimeFilterPostcodeDistrict]
)

