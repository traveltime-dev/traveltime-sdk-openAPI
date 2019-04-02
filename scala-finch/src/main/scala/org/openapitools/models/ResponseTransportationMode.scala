package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._

/**
 * 
 */
case class ResponseTransportationMode()

object ResponseTransportationMode {
    /**
     * Creates the codec for converting ResponseTransportationMode from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTransportationMode] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTransportationMode] = deriveEncoder
}
