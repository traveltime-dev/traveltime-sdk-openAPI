package org.openapitools.server.model


/**
 * @param httpStatus  for example: ''null''
 * @param errorCode  for example: ''null''
 * @param description  for example: ''null''
 * @param documentationLink  for example: ''null''
 * @param additionalInfo  for example: ''null''
*/
final case class ResponseError (
  httpStatus: Option[Int],
  errorCode: Option[Int],
  description: Option[String],
  documentationLink: Option[String],
  additionalInfo: Option[Map[String, Seq[String]]]
)

