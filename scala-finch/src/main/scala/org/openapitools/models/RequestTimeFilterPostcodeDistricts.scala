package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.RequestTimeFilterPostcodeDistrictsArrivalSearch
import org.openapitools.models.RequestTimeFilterPostcodeDistrictsDepartureSearch
import scala.collection.immutable.Seq

/**
 * 
 * @param departureUnderscoresearches 
 * @param arrivalUnderscoresearches 
 */
case class RequestTimeFilterPostcodeDistricts(departureUnderscoresearches: Option[Seq[RequestTimeFilterPostcodeDistrictsDepartureSearch]],
                arrivalUnderscoresearches: Option[Seq[RequestTimeFilterPostcodeDistrictsArrivalSearch]]
                )

object RequestTimeFilterPostcodeDistricts {
    /**
     * Creates the codec for converting RequestTimeFilterPostcodeDistricts from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterPostcodeDistricts] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterPostcodeDistricts] = deriveEncoder
}
