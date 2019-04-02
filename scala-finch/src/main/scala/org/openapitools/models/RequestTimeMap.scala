package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.RequestTimeMapArrivalSearch
import org.openapitools.models.RequestTimeMapDepartureSearch
import org.openapitools.models.RequestUnionOnIntersection
import scala.collection.immutable.Seq

/**
 * 
 * @param departureUnderscoresearches 
 * @param arrivalUnderscoresearches 
 * @param unions 
 * @param intersections 
 */
case class RequestTimeMap(departureUnderscoresearches: Option[Seq[RequestTimeMapDepartureSearch]],
                arrivalUnderscoresearches: Option[Seq[RequestTimeMapArrivalSearch]],
                unions: Option[Seq[RequestUnionOnIntersection]],
                intersections: Option[Seq[RequestUnionOnIntersection]]
                )

object RequestTimeMap {
    /**
     * Creates the codec for converting RequestTimeMap from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeMap] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeMap] = deriveEncoder
}
