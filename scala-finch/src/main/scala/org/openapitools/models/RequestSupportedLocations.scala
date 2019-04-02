package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.RequestLocation
import scala.collection.immutable.Seq

/**
 * 
 * @param locations 
 */
case class RequestSupportedLocations(locations: Seq[RequestLocation]
                )

object RequestSupportedLocations {
    /**
     * Creates the codec for converting RequestSupportedLocations from and to JSON.
     */
    implicit val decoder: Decoder[RequestSupportedLocations] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestSupportedLocations] = deriveEncoder
}
