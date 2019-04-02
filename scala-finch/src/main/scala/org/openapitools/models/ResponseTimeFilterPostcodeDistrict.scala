package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseTimeFilterPostcodeDistrictProperties

/**
 * 
 * @param code 
 * @param properties 
 */
case class ResponseTimeFilterPostcodeDistrict(code: String,
                properties: ResponseTimeFilterPostcodeDistrictProperties
                )

object ResponseTimeFilterPostcodeDistrict {
    /**
     * Creates the codec for converting ResponseTimeFilterPostcodeDistrict from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeFilterPostcodeDistrict] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeFilterPostcodeDistrict] = deriveEncoder
}
