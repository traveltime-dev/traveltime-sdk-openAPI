package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._

/**
 * 
 * @param enabled 
 * @param width 
 */
case class RequestRangeNoMaxResults(enabled: Boolean,
                width: Int
                )

object RequestRangeNoMaxResults {
    /**
     * Creates the codec for converting RequestRangeNoMaxResults from and to JSON.
     */
    implicit val decoder: Decoder[RequestRangeNoMaxResults] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestRangeNoMaxResults] = deriveEncoder
}
