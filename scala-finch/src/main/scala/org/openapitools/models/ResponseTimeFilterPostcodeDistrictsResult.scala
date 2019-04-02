package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseTimeFilterPostcodeDistrict
import scala.collection.immutable.Seq

/**
 * 
 * @param searchUnderscoreid 
 * @param districts 
 */
case class ResponseTimeFilterPostcodeDistrictsResult(searchUnderscoreid: String,
                districts: Seq[ResponseTimeFilterPostcodeDistrict]
                )

object ResponseTimeFilterPostcodeDistrictsResult {
    /**
     * Creates the codec for converting ResponseTimeFilterPostcodeDistrictsResult from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeFilterPostcodeDistrictsResult] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeFilterPostcodeDistrictsResult] = deriveEncoder
}
