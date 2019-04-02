package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._

/**
 * 
 * @param lat 
 * @param lng 
 */
case class Coords(lat: Double,
                lng: Double
                )

object Coords {
    /**
     * Creates the codec for converting Coords from and to JSON.
     */
    implicit val decoder: Decoder[Coords] = deriveDecoder
    implicit val encoder: ObjectEncoder[Coords] = deriveEncoder
}
