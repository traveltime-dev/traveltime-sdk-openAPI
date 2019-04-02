package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._

/**
 * 
 */
case class RequestTimeFilterProperty()

object RequestTimeFilterProperty {
    /**
     * Creates the codec for converting RequestTimeFilterProperty from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterProperty] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterProperty] = deriveEncoder
}
