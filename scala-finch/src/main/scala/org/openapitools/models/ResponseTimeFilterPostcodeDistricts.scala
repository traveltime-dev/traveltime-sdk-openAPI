package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ResponseTimeFilterPostcodeDistrictsResult
import scala.collection.immutable.Seq

/**
 * 
 * @param results 
 */
case class ResponseTimeFilterPostcodeDistricts(results: Seq[ResponseTimeFilterPostcodeDistrictsResult]
                )

object ResponseTimeFilterPostcodeDistricts {
    /**
     * Creates the codec for converting ResponseTimeFilterPostcodeDistricts from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeFilterPostcodeDistricts] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeFilterPostcodeDistricts] = deriveEncoder
}
