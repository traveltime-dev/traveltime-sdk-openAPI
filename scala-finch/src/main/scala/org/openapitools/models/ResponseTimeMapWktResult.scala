package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ResponseTimeMapProperties

/**
 * 
 * @param searchUnderscoreid 
 * @param shape 
 * @param properties 
 */
case class ResponseTimeMapWktResult(searchUnderscoreid: String,
                shape: String,
                properties: ResponseTimeMapProperties
                )

object ResponseTimeMapWktResult {
    /**
     * Creates the codec for converting ResponseTimeMapWktResult from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeMapWktResult] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeMapWktResult] = deriveEncoder
}
