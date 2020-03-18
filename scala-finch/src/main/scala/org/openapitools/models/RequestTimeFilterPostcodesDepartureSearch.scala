package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import java.time.ZonedDateTime
import org.openapitools.models.RequestRangeFull
import org.openapitools.models.RequestTimeFilterPostcodesProperty
import org.openapitools.models.RequestTransportation
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param transportation 
 * @param travelUnderscoretime 
 * @param departureUnderscoretime 
 * @param properties 
 * @param range 
 */
case class RequestTimeFilterPostcodesDepartureSearch(id: String,
                transportation: RequestTransportation,
                travelUnderscoretime: Int,
                departureUnderscoretime: ZonedDateTime,
                properties: Seq[RequestTimeFilterPostcodesProperty],
                range: Option[RequestRangeFull]
                )

object RequestTimeFilterPostcodesDepartureSearch {
    /**
     * Creates the codec for converting RequestTimeFilterPostcodesDepartureSearch from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterPostcodesDepartureSearch] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterPostcodesDepartureSearch] = deriveEncoder
}
