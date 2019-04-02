package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import java.time.ZonedDateTime
import org.openapitools.models.RequestRangeFull
import org.openapitools.models.RequestTimeFilterPostcodeDistrictsProperty
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
case class RequestTimeFilterPostcodeDistrictsArrivalSearch(id: String,
                transportation: RequestTransportation,
                travelUnderscoretime: Int,
                arrivalUnderscoretime: ZonedDateTime,
                reachableUnderscorepostcodesUnderscorethreshold: Double,
                properties: Seq[RequestTimeFilterPostcodeDistrictsProperty],
                range: Option[RequestRangeFull]
                )

object RequestTimeFilterPostcodeDistrictsArrivalSearch {
    /**
     * Creates the codec for converting RequestTimeFilterPostcodeDistrictsArrivalSearch from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterPostcodeDistrictsArrivalSearch] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterPostcodeDistrictsArrivalSearch] = deriveEncoder
}
