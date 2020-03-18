package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import java.time.ZonedDateTime
import org.openapitools.models.RequestRangeFull
import org.openapitools.models.RequestTimeFilterProperty
import org.openapitools.models.RequestTransportation
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param departureUnderscorelocationUnderscoreids 
 * @param arrivalUnderscorelocationUnderscoreid 
 * @param transportation 
 * @param travelUnderscoretime 
 * @param arrivalUnderscoretime 
 * @param properties 
 * @param range 
 */
case class RequestTimeFilterArrivalSearch(id: String,
                departureUnderscorelocationUnderscoreids: Seq[String],
                arrivalUnderscorelocationUnderscoreid: String,
                transportation: RequestTransportation,
                travelUnderscoretime: Int,
                arrivalUnderscoretime: ZonedDateTime,
                properties: Seq[RequestTimeFilterProperty],
                range: Option[RequestRangeFull]
                )

object RequestTimeFilterArrivalSearch {
    /**
     * Creates the codec for converting RequestTimeFilterArrivalSearch from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterArrivalSearch] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterArrivalSearch] = deriveEncoder
}
