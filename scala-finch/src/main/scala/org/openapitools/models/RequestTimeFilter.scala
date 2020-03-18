package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.RequestLocation
import org.openapitools.models.RequestTimeFilterArrivalSearch
import org.openapitools.models.RequestTimeFilterDepartureSearch
import scala.collection.immutable.Seq

/**
 * 
 * @param locations 
 * @param departureUnderscoresearches 
 * @param arrivalUnderscoresearches 
 */
case class RequestTimeFilter(locations: Seq[RequestLocation],
                departureUnderscoresearches: Option[Seq[RequestTimeFilterDepartureSearch]],
                arrivalUnderscoresearches: Option[Seq[RequestTimeFilterArrivalSearch]]
                )

object RequestTimeFilter {
    /**
     * Creates the codec for converting RequestTimeFilter from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilter] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilter] = deriveEncoder
}
