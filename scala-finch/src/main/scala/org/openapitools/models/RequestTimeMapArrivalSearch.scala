package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import java.time.ZonedDateTime
import org.openapitools.models.Coords
import org.openapitools.models.RequestRangeNoMaxResults
import org.openapitools.models.RequestTimeMapProperty
import org.openapitools.models.RequestTransportation
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param coords 
 * @param transportation 
 * @param travelUnderscoretime 
 * @param arrivalUnderscoretime 
 * @param properties 
 * @param range 
 */
case class RequestTimeMapArrivalSearch(id: String,
                coords: Coords,
                transportation: RequestTransportation,
                travelUnderscoretime: Int,
                arrivalUnderscoretime: ZonedDateTime,
                properties: Option[Seq[RequestTimeMapProperty]],
                range: Option[RequestRangeNoMaxResults]
                )

object RequestTimeMapArrivalSearch {
    /**
     * Creates the codec for converting RequestTimeMapArrivalSearch from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeMapArrivalSearch] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeMapArrivalSearch] = deriveEncoder
}
