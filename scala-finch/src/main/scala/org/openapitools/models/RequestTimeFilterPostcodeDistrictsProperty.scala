package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._

/**
 * 
 */
case class RequestTimeFilterPostcodeDistrictsProperty()

object RequestTimeFilterPostcodeDistrictsProperty {
    /**
     * Creates the codec for converting RequestTimeFilterPostcodeDistrictsProperty from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterPostcodeDistrictsProperty] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterPostcodeDistrictsProperty] = deriveEncoder
}
