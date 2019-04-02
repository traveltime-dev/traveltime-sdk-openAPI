package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._

/**
 * 
 * @param _type 
 * @param ptUnderscorechangeUnderscoredelay 
 * @param walkingUnderscoretime 
 * @param drivingUnderscoretimeUnderscoretoUnderscorestation 
 * @param parkingUnderscoretime 
 * @param boardingUnderscoretime 
 */
case class RequestTransportation(_type: String,
                ptUnderscorechangeUnderscoredelay: Option[Int],
                walkingUnderscoretime: Option[Int],
                drivingUnderscoretimeUnderscoretoUnderscorestation: Option[Int],
                parkingUnderscoretime: Option[Int],
                boardingUnderscoretime: Option[Int]
                )

object RequestTransportation {
    /**
     * Creates the codec for converting RequestTransportation from and to JSON.
     */
    implicit val decoder: Decoder[RequestTransportation] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTransportation] = deriveEncoder
}
