package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import java.time.ZonedDateTime
import org.openapitools.models.RequestRangeFull
import org.openapitools.models.RequestRoutesProperty
import org.openapitools.models.RequestTransportation
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param departureUnderscorelocationUnderscoreids 
 * @param arrivalUnderscorelocationUnderscoreid 
 * @param transportation 
 * @param arrivalUnderscoretime 
 * @param properties 
 * @param range 
 */
case class RequestRoutesArrivalSearch(id: String,
                departureUnderscorelocationUnderscoreids: Seq[String],
                arrivalUnderscorelocationUnderscoreid: String,
                transportation: RequestTransportation,
                arrivalUnderscoretime: ZonedDateTime,
                properties: Seq[RequestRoutesProperty],
                range: Option[RequestRangeFull]
                )

object RequestRoutesArrivalSearch {
    /**
     * Creates the codec for converting RequestRoutesArrivalSearch from and to JSON.
     */
    implicit val decoder: Decoder[RequestRoutesArrivalSearch] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestRoutesArrivalSearch] = deriveEncoder
}
