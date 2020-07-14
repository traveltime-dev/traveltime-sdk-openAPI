package org.openapitools.server.model


/**
 * @param name  for example: ''null''
 * @param label  for example: ''null''
 * @param score  for example: ''null''
 * @param houseNumber  for example: ''null''
 * @param street  for example: ''null''
 * @param region  for example: ''null''
 * @param regionCode  for example: ''null''
 * @param neighbourhood  for example: ''null''
 * @param county  for example: ''null''
 * @param macroregion  for example: ''null''
 * @param city  for example: ''null''
 * @param country  for example: ''null''
 * @param countryCode  for example: ''null''
 * @param continent  for example: ''null''
 * @param postcode  for example: ''null''
 * @param features  for example: ''null''
*/
final case class ResponseGeocodingProperties (
  name: String,
  label: String,
  score: Option[Double],
  houseNumber: Option[String],
  street: Option[String],
  region: Option[String],
  regionCode: Option[String],
  neighbourhood: Option[String],
  county: Option[String],
  macroregion: Option[String],
  city: Option[String],
  country: Option[String],
  countryCode: Option[String],
  continent: Option[String],
  postcode: Option[String],
  features: Option[ResponseMapInfoFeatures]
)

