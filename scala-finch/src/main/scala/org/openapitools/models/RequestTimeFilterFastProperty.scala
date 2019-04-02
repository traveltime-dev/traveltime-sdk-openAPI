package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._

/**
 * 
 */
case class RequestTimeFilterFastProperty()

object RequestTimeFilterFastProperty {
    /**
     * Creates the codec for converting RequestTimeFilterFastProperty from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterFastProperty] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterFastProperty] = deriveEncoder
}
