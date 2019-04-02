package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.Coords

/**
 * 
 * @param id 
 * @param coords 
 */
case class RequestLocation(id: String,
                coords: Coords
                )

object RequestLocation {
    /**
     * Creates the codec for converting RequestLocation from and to JSON.
     */
    implicit val decoder: Decoder[RequestLocation] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestLocation] = deriveEncoder
}
