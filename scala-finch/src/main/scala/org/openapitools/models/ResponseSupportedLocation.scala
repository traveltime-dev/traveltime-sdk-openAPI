package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param id 
 * @param mapUnderscorename 
 */
case class ResponseSupportedLocation(id: String,
                mapUnderscorename: String
                )

object ResponseSupportedLocation {
    /**
     * Creates the codec for converting ResponseSupportedLocation from and to JSON.
     */
    implicit val decoder: Decoder[ResponseSupportedLocation] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseSupportedLocation] = deriveEncoder
}
