package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseFareTicket
import org.openapitools.models.ResponseFaresBreakdownItem
import scala.collection.immutable.Seq

/**
 * 
 * @param breakdown 
 * @param ticketsUnderscoretotal 
 */
case class ResponseFares(breakdown: Seq[ResponseFaresBreakdownItem],
                ticketsUnderscoretotal: Seq[ResponseFareTicket]
                )

object ResponseFares {
    /**
     * Creates the codec for converting ResponseFares from and to JSON.
     */
    implicit val decoder: Decoder[ResponseFares] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseFares] = deriveEncoder
}
