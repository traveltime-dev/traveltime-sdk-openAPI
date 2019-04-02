package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._

/**
 * 
 * @param travelUnderscoretime 
 * @param distance 
 */
case class ResponseTimeFilterPostcodesProperties(travelUnderscoretime: Option[Int],
                distance: Option[Int]
                )

object ResponseTimeFilterPostcodesProperties {
    /**
     * Creates the codec for converting ResponseTimeFilterPostcodesProperties from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeFilterPostcodesProperties] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeFilterPostcodesProperties] = deriveEncoder
}
