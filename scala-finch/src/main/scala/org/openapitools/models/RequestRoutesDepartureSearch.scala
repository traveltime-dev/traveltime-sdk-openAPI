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
 * @param departureUnderscorelocationUnderscoreid 
 * @param arrivalUnderscorelocationUnderscoreids 
 * @param transportation 
 * @param departureUnderscoretime 
 * @param properties 
 * @param range 
 */
case class RequestRoutesDepartureSearch(id: String,
                departureUnderscorelocationUnderscoreid: String,
                arrivalUnderscorelocationUnderscoreids: Seq[String],
                transportation: RequestTransportation,
                departureUnderscoretime: ZonedDateTime,
                properties: Seq[RequestRoutesProperty],
                range: Option[RequestRangeFull]
                )

object RequestRoutesDepartureSearch {
    /**
     * Creates the codec for converting RequestRoutesDepartureSearch from and to JSON.
     */
    implicit val decoder: Decoder[RequestRoutesDepartureSearch] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestRoutesDepartureSearch] = deriveEncoder
}
