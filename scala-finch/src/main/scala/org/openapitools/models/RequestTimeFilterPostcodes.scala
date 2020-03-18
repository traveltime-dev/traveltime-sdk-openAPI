package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.RequestTimeFilterPostcodesArrivalSearch
import org.openapitools.models.RequestTimeFilterPostcodesDepartureSearch
import scala.collection.immutable.Seq

/**
 * 
 * @param departureUnderscoresearches 
 * @param arrivalUnderscoresearches 
 */
case class RequestTimeFilterPostcodes(departureUnderscoresearches: Option[Seq[RequestTimeFilterPostcodesDepartureSearch]],
                arrivalUnderscoresearches: Option[Seq[RequestTimeFilterPostcodesArrivalSearch]]
                )

object RequestTimeFilterPostcodes {
    /**
     * Creates the codec for converting RequestTimeFilterPostcodes from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterPostcodes] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterPostcodes] = deriveEncoder
}
