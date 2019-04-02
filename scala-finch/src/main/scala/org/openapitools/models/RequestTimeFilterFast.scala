package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.RequestLocation
import org.openapitools.models.RequestTimeFilterFastArrivalSearches
import scala.collection.immutable.Seq

/**
 * 
 * @param locations 
 * @param arrivalUnderscoresearches 
 */
case class RequestTimeFilterFast(locations: Seq[RequestLocation],
                arrivalUnderscoresearches: RequestTimeFilterFastArrivalSearches
                )

object RequestTimeFilterFast {
    /**
     * Creates the codec for converting RequestTimeFilterFast from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterFast] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterFast] = deriveEncoder
}
