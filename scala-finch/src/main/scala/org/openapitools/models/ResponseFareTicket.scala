package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._

/**
 * 
 * @param _type 
 * @param price 
 * @param currency 
 */
case class ResponseFareTicket(_type: String,
                price: Double,
                currency: String
                )

object ResponseFareTicket {
    /**
     * Creates the codec for converting ResponseFareTicket from and to JSON.
     */
    implicit val decoder: Decoder[ResponseFareTicket] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseFareTicket] = deriveEncoder
}
