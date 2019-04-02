package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseTransportationMode

/**
 * 
 * @param mode 
 * @param distance 
 */
case class ResponseDistanceBreakdownItem(mode: ResponseTransportationMode,
                distance: Int
                )

object ResponseDistanceBreakdownItem {
    /**
     * Creates the codec for converting ResponseDistanceBreakdownItem from and to JSON.
     */
    implicit val decoder: Decoder[ResponseDistanceBreakdownItem] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseDistanceBreakdownItem] = deriveEncoder
}
