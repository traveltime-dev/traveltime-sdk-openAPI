package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._

/**
 * 
 */
case class RequestRoutesProperty()

object RequestRoutesProperty {
    /**
     * Creates the codec for converting RequestRoutesProperty from and to JSON.
     */
    implicit val decoder: Decoder[RequestRoutesProperty] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestRoutesProperty] = deriveEncoder
}
