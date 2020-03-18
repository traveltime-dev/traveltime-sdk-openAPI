package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.RequestLocation
import org.openapitools.models.RequestRoutesArrivalSearch
import org.openapitools.models.RequestRoutesDepartureSearch
import scala.collection.immutable.Seq

/**
 * 
 * @param locations 
 * @param departureUnderscoresearches 
 * @param arrivalUnderscoresearches 
 */
case class RequestRoutes(locations: Seq[RequestLocation],
                departureUnderscoresearches: Option[Seq[RequestRoutesDepartureSearch]],
                arrivalUnderscoresearches: Option[Seq[RequestRoutesArrivalSearch]]
                )

object RequestRoutes {
    /**
     * Creates the codec for converting RequestRoutes from and to JSON.
     */
    implicit val decoder: Decoder[RequestRoutes] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestRoutes] = deriveEncoder
}
