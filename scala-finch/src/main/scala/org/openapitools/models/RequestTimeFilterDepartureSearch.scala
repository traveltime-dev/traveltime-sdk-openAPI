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
 * @param departureUnderscorelocationUnderscoreid 
 * @param arrivalUnderscorelocationUnderscoreids 
 * @param transportation 
 * @param travelUnderscoretime 
 * @param departureUnderscoretime 
 * @param properties 
 * @param range 
 */
case class RequestTimeFilterDepartureSearch(id: String,
                departureUnderscorelocationUnderscoreid: String,
                arrivalUnderscorelocationUnderscoreids: Seq[String],
                transportation: RequestTransportation,
                travelUnderscoretime: Int,
                departureUnderscoretime: ZonedDateTime,
                properties: Seq[RequestTimeFilterProperty],
                range: Option[RequestRangeFull]
                )

object RequestTimeFilterDepartureSearch {
    /**
     * Creates the codec for converting RequestTimeFilterDepartureSearch from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterDepartureSearch] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterDepartureSearch] = deriveEncoder
}
