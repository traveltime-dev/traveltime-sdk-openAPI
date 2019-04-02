package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseFaresFast

/**
 * 
 * @param travelUnderscoretime 
 * @param fares 
 */
case class ResponseTimeFilterFastProperties(travelUnderscoretime: Option[Int],
                fares: Option[ResponseFaresFast]
                )

object ResponseTimeFilterFastProperties {
    /**
     * Creates the codec for converting ResponseTimeFilterFastProperties from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeFilterFastProperties] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeFilterFastProperties] = deriveEncoder
}
