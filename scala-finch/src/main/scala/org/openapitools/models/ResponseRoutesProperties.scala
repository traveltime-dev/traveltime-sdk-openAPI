package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ResponseFares
import org.openapitools.models.ResponseRoute

/**
 * 
 * @param travelUnderscoretime 
 * @param distance 
 * @param fares 
 * @param route 
 */
case class ResponseRoutesProperties(travelUnderscoretime: Option[Int],
                distance: Option[Int],
                fares: Option[ResponseFares],
                route: Option[ResponseRoute]
                )

object ResponseRoutesProperties {
    /**
     * Creates the codec for converting ResponseRoutesProperties from and to JSON.
     */
    implicit val decoder: Decoder[ResponseRoutesProperties] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseRoutesProperties] = deriveEncoder
}
