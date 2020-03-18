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
 * @param departureUnderscorelocationUnderscoreid 
 * @param arrivalUnderscorelocationUnderscoreids 
 * @param transportation 
 * @param travelUnderscoretime 
 * @param arrivalUnderscoretimeUnderscoreperiod 
 * @param properties 
 */
case class RequestTimeFilterFastArrivalOneToManySearch(id: String,
                departureUnderscorelocationUnderscoreid: String,
                arrivalUnderscorelocationUnderscoreids: Seq[String],
                transportation: RequestTransportationFast,
                travelUnderscoretime: Int,
                arrivalUnderscoretimeUnderscoreperiod: RequestArrivalTimePeriod,
                properties: Seq[RequestTimeFilterFastProperty]
                )

object RequestTimeFilterFastArrivalOneToManySearch {
    /**
     * Creates the codec for converting RequestTimeFilterFastArrivalOneToManySearch from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterFastArrivalOneToManySearch] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterFastArrivalOneToManySearch] = deriveEncoder
}
