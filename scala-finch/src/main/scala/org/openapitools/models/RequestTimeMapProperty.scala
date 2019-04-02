package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._

/**
 * 
 */
case class RequestTimeMapProperty()

object RequestTimeMapProperty {
    /**
     * Creates the codec for converting RequestTimeMapProperty from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeMapProperty] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeMapProperty] = deriveEncoder
}
