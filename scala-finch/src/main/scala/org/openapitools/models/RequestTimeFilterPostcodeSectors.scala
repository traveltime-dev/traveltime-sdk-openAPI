package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.RequestTimeFilterPostcodeSectorsArrivalSearch
import org.openapitools.models.RequestTimeFilterPostcodeSectorsDepartureSearch
import scala.collection.immutable.Seq

/**
 * 
 * @param departureUnderscoresearches 
 * @param arrivalUnderscoresearches 
 */
case class RequestTimeFilterPostcodeSectors(departureUnderscoresearches: Option[Seq[RequestTimeFilterPostcodeSectorsDepartureSearch]],
                arrivalUnderscoresearches: Option[Seq[RequestTimeFilterPostcodeSectorsArrivalSearch]]
                )

object RequestTimeFilterPostcodeSectors {
    /**
     * Creates the codec for converting RequestTimeFilterPostcodeSectors from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterPostcodeSectors] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterPostcodeSectors] = deriveEncoder
}
