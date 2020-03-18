package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 */
case class RequestTimeFilterPostcodesProperty()

object RequestTimeFilterPostcodesProperty {
    /**
     * Creates the codec for converting RequestTimeFilterPostcodesProperty from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterPostcodesProperty] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterPostcodesProperty] = deriveEncoder
}
