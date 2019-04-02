package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._

/**
 * 
 * @param enabled 
 * @param maxUnderscoreresults 
 * @param width 
 */
case class RequestRangeFull(enabled: Boolean,
                maxUnderscoreresults: Int,
                width: Int
                )

object RequestRangeFull {
    /**
     * Creates the codec for converting RequestRangeFull from and to JSON.
     */
    implicit val decoder: Decoder[RequestRangeFull] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestRangeFull] = deriveEncoder
}
