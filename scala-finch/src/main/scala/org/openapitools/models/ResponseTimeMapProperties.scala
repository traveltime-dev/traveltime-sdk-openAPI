package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._

/**
 * 
 * @param isUnderscoreonlyUnderscorewalking 
 */
case class ResponseTimeMapProperties(isUnderscoreonlyUnderscorewalking: Option[Boolean]
                )

object ResponseTimeMapProperties {
    /**
     * Creates the codec for converting ResponseTimeMapProperties from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeMapProperties] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeMapProperties] = deriveEncoder
}
