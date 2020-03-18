package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 */
case class RequestArrivalTimePeriod()

object RequestArrivalTimePeriod {
    /**
     * Creates the codec for converting RequestArrivalTimePeriod from and to JSON.
     */
    implicit val decoder: Decoder[RequestArrivalTimePeriod] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestArrivalTimePeriod] = deriveEncoder
}
