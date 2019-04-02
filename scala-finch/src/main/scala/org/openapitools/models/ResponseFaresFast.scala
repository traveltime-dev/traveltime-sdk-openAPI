package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseFareTicket
import scala.collection.immutable.Seq

/**
 * 
 * @param ticketsUnderscoretotal 
 */
case class ResponseFaresFast(ticketsUnderscoretotal: Seq[ResponseFareTicket]
                )

object ResponseFaresFast {
    /**
     * Creates the codec for converting ResponseFaresFast from and to JSON.
     */
    implicit val decoder: Decoder[ResponseFaresFast] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseFaresFast] = deriveEncoder
}
