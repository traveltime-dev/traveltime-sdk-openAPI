package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseSupportedLocation
import scala.collection.immutable.Seq

/**
 * 
 * @param locations 
 * @param unsupportedUnderscorelocations 
 */
case class ResponseSupportedLocations(locations: Seq[ResponseSupportedLocation],
                unsupportedUnderscorelocations: Seq[String]
                )

object ResponseSupportedLocations {
    /**
     * Creates the codec for converting ResponseSupportedLocations from and to JSON.
     */
    implicit val decoder: Decoder[ResponseSupportedLocations] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseSupportedLocations] = deriveEncoder
}
