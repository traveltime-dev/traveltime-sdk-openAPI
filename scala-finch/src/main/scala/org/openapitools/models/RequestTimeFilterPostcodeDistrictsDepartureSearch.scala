package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
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
 * @param departureUnderscoretime 
 * @param reachableUnderscorepostcodesUnderscorethreshold 
 * @param properties 
 * @param range 
 */
case class RequestTimeFilterPostcodeDistrictsDepartureSearch(id: String,
                transportation: RequestTransportation,
                travelUnderscoretime: Int,
                departureUnderscoretime: ZonedDateTime,
                reachableUnderscorepostcodesUnderscorethreshold: Double,
                properties: Seq[RequestTimeFilterPostcodeDistrictsProperty],
                range: Option[RequestRangeFull]
                )

object RequestTimeFilterPostcodeDistrictsDepartureSearch {
    /**
     * Creates the codec for converting RequestTimeFilterPostcodeDistrictsDepartureSearch from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterPostcodeDistrictsDepartureSearch] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterPostcodeDistrictsDepartureSearch] = deriveEncoder
}
