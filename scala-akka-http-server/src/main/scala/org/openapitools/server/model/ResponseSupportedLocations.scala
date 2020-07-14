package org.openapitools.server.model


/**
 * @param locations  for example: ''null''
 * @param unsupportedLocations  for example: ''null''
*/
final case class ResponseSupportedLocations (
  locations: Seq[ResponseSupportedLocation],
  unsupportedLocations: Seq[String]
)

