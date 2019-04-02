package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._

/**
 * 
 * @param _type 
 */
case class RequestTransportationFast(_type: String
                )

object RequestTransportationFast {
    /**
     * Creates the codec for converting RequestTransportationFast from and to JSON.
     */
    implicit val decoder: Decoder[RequestTransportationFast] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTransportationFast] = deriveEncoder
}
