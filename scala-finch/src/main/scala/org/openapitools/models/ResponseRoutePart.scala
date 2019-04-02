package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.Coords
import org.openapitools.models.ResponseTransportationMode
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param _type 
 * @param mode 
 * @param directions 
 * @param distance 
 * @param travelUnderscoretime 
 * @param coords 
 * @param direction 
 * @param road 
 * @param turn 
 * @param line 
 * @param departureUnderscorestation 
 * @param arrivalUnderscorestation 
 * @param departsUnderscoreat 
 * @param arrivesUnderscoreat 
 * @param numUnderscorestops 
 */
case class ResponseRoutePart(id: String,
                _type: String,
                mode: ResponseTransportationMode,
                directions: String,
                distance: Int,
                travelUnderscoretime: Int,
                coords: Seq[Coords],
                direction: Option[String],
                road: Option[String],
                turn: Option[String],
                line: Option[String],
                departureUnderscorestation: Option[String],
                arrivalUnderscorestation: Option[String],
                departsUnderscoreat: Option[String],
                arrivesUnderscoreat: Option[String],
                numUnderscorestops: Option[Int]
                )

object ResponseRoutePart {
    /**
     * Creates the codec for converting ResponseRoutePart from and to JSON.
     */
    implicit val decoder: Decoder[ResponseRoutePart] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseRoutePart] = deriveEncoder
}
