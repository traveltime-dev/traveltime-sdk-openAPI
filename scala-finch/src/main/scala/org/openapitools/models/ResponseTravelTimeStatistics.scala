package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param min 
 * @param max 
 * @param mean 
 * @param median 
 */
case class ResponseTravelTimeStatistics(min: Int,
                max: Int,
                mean: Int,
                median: Int
                )

object ResponseTravelTimeStatistics {
    /**
     * Creates the codec for converting ResponseTravelTimeStatistics from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTravelTimeStatistics] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTravelTimeStatistics] = deriveEncoder
}
