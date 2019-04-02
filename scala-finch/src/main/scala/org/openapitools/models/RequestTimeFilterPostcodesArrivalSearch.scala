package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
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
 * @param arrivalUnderscoretime 
 * @param properties 
 * @param range 
 */
case class RequestTimeFilterPostcodesArrivalSearch(id: String,
                transportation: RequestTransportation,
                travelUnderscoretime: Int,
                arrivalUnderscoretime: ZonedDateTime,
                properties: Seq[RequestTimeFilterPostcodesProperty],
                range: Option[RequestRangeFull]
                )

object RequestTimeFilterPostcodesArrivalSearch {
    /**
     * Creates the codec for converting RequestTimeFilterPostcodesArrivalSearch from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterPostcodesArrivalSearch] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterPostcodesArrivalSearch] = deriveEncoder
}
