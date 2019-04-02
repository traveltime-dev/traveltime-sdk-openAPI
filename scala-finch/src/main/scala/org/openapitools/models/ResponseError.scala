package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import scala.collection.immutable.Seq

/**
 * 
 * @param httpUnderscorestatus 
 * @param errorUnderscorecode 
 * @param description 
 * @param documentationUnderscorelink 
 * @param additionalUnderscoreinfo 
 */
case class ResponseError(httpUnderscorestatus: Option[Int],
                errorUnderscorecode: Option[Int],
                description: Option[String],
                documentationUnderscorelink: Option[String],
                additionalUnderscoreinfo: Option[Map[String, Seq[String]]]
                )

object ResponseError {
    /**
     * Creates the codec for converting ResponseError from and to JSON.
     */
    implicit val decoder: Decoder[ResponseError] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseError] = deriveEncoder
}
