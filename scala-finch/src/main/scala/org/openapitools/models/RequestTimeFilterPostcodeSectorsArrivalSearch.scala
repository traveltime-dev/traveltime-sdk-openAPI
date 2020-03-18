package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
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
 * @param arrivalUnderscoretime 
 * @param reachableUnderscorepostcodesUnderscorethreshold 
 * @param properties 
 * @param range 
 */
case class RequestTimeFilterPostcodeSectorsArrivalSearch(id: String,
                transportation: RequestTransportation,
                travelUnderscoretime: Int,
                arrivalUnderscoretime: ZonedDateTime,
                reachableUnderscorepostcodesUnderscorethreshold: Double,
                properties: Seq[RequestTimeFilterPostcodeSectorsProperty],
                range: Option[RequestRangeFull]
                )

object RequestTimeFilterPostcodeSectorsArrivalSearch {
    /**
     * Creates the codec for converting RequestTimeFilterPostcodeSectorsArrivalSearch from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterPostcodeSectorsArrivalSearch] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterPostcodeSectorsArrivalSearch] = deriveEncoder
}
