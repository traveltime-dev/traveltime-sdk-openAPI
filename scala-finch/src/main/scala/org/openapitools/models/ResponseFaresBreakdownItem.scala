package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ResponseFareTicket
import org.openapitools.models.ResponseTransportationMode
import scala.collection.immutable.Seq

/**
 * 
 * @param modes 
 * @param routeUnderscorepartUnderscoreids 
 * @param tickets 
 */
case class ResponseFaresBreakdownItem(modes: Seq[ResponseTransportationMode],
                routeUnderscorepartUnderscoreids: Seq[Int],
                tickets: Seq[ResponseFareTicket]
                )

object ResponseFaresBreakdownItem {
    /**
     * Creates the codec for converting ResponseFaresBreakdownItem from and to JSON.
     */
    implicit val decoder: Decoder[ResponseFaresBreakdownItem] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseFaresBreakdownItem] = deriveEncoder
}
