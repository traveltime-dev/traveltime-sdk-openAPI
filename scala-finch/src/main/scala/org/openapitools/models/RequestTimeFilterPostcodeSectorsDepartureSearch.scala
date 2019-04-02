package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import java.time.ZonedDateTime
import org.openapitools.models.RequestRangeFull
import org.openapitools.models.RequestTimeFilterPostcodeSectorsProperty
import org.openapitools.models.RequestTransportation
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param transportation 
 * @param travelUnderscoretime 
 * @param departureUnderscoretime 
 * @param reachableUnderscorepostcodesUnderscorethreshold 
 * @param properties 
 * @param range 
 */
case class RequestTimeFilterPostcodeSectorsDepartureSearch(id: String,
                transportation: RequestTransportation,
                travelUnderscoretime: Int,
                departureUnderscoretime: ZonedDateTime,
                reachableUnderscorepostcodesUnderscorethreshold: Double,
                properties: Seq[RequestTimeFilterPostcodeSectorsProperty],
                range: Option[RequestRangeFull]
                )

object RequestTimeFilterPostcodeSectorsDepartureSearch {
    /**
     * Creates the codec for converting RequestTimeFilterPostcodeSectorsDepartureSearch from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterPostcodeSectorsDepartureSearch] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterPostcodeSectorsDepartureSearch] = deriveEncoder
}
