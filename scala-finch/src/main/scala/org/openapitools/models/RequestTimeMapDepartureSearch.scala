package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
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
 * @param departureUnderscoretime 
 * @param properties 
 * @param range 
 */
case class RequestTimeMapDepartureSearch(id: String,
                coords: Coords,
                transportation: RequestTransportation,
                travelUnderscoretime: Int,
                departureUnderscoretime: ZonedDateTime,
                properties: Option[Seq[RequestTimeMapProperty]],
                range: Option[RequestRangeNoMaxResults]
                )

object RequestTimeMapDepartureSearch {
    /**
     * Creates the codec for converting RequestTimeMapDepartureSearch from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeMapDepartureSearch] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeMapDepartureSearch] = deriveEncoder
}
