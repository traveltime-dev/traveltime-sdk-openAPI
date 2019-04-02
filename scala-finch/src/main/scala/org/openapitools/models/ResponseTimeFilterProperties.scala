package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseDistanceBreakdownItem
import org.openapitools.models.ResponseFares
import org.openapitools.models.ResponseRoute
import scala.collection.immutable.Seq

/**
 * 
 * @param travelUnderscoretime 
 * @param distance 
 * @param distanceUnderscorebreakdown 
 * @param fares 
 * @param route 
 */
case class ResponseTimeFilterProperties(travelUnderscoretime: Option[Int],
                distance: Option[Int],
                distanceUnderscorebreakdown: Option[Seq[ResponseDistanceBreakdownItem]],
                fares: Option[ResponseFares],
                route: Option[ResponseRoute]
                )

object ResponseTimeFilterProperties {
    /**
     * Creates the codec for converting ResponseTimeFilterProperties from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeFilterProperties] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeFilterProperties] = deriveEncoder
}
