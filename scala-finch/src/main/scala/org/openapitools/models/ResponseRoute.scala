package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import java.time.ZonedDateTime
import org.openapitools.models.ResponseRoutePart
import scala.collection.immutable.Seq

/**
 * 
 * @param departureUnderscoretime 
 * @param arrivalUnderscoretime 
 * @param parts 
 */
case class ResponseRoute(departureUnderscoretime: ZonedDateTime,
                arrivalUnderscoretime: ZonedDateTime,
                parts: Seq[ResponseRoutePart]
                )

object ResponseRoute {
    /**
     * Creates the codec for converting ResponseRoute from and to JSON.
     */
    implicit val decoder: Decoder[ResponseRoute] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseRoute] = deriveEncoder
}
