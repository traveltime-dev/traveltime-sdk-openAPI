package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._

/**
 * 
 */
case class RequestTimeFilterPostcodeSectorsProperty()

object RequestTimeFilterPostcodeSectorsProperty {
    /**
     * Creates the codec for converting RequestTimeFilterPostcodeSectorsProperty from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterPostcodeSectorsProperty] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterPostcodeSectorsProperty] = deriveEncoder
}
