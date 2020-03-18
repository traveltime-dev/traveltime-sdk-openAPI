package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.RequestArrivalTimePeriod
import org.openapitools.models.RequestTimeFilterFastProperty
import org.openapitools.models.RequestTransportationFast
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param arrivalUnderscorelocationUnderscoreid 
 * @param departureUnderscorelocationUnderscoreids 
 * @param transportation 
 * @param travelUnderscoretime 
 * @param arrivalUnderscoretimeUnderscoreperiod 
 * @param properties 
 */
case class RequestTimeFilterFastArrivalManyToOneSearch(id: String,
                arrivalUnderscorelocationUnderscoreid: String,
                departureUnderscorelocationUnderscoreids: Seq[String],
                transportation: RequestTransportationFast,
                travelUnderscoretime: Int,
                arrivalUnderscoretimeUnderscoreperiod: RequestArrivalTimePeriod,
                properties: Seq[RequestTimeFilterFastProperty]
                )

object RequestTimeFilterFastArrivalManyToOneSearch {
    /**
     * Creates the codec for converting RequestTimeFilterFastArrivalManyToOneSearch from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterFastArrivalManyToOneSearch] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterFastArrivalManyToOneSearch] = deriveEncoder
}
