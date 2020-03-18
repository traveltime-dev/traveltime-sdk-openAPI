package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ResponseMapInfoFeatures

/**
 * 
 * @param name 
 * @param features 
 */
case class ResponseMapInfoMap(name: String,
                features: ResponseMapInfoFeatures
                )

object ResponseMapInfoMap {
    /**
     * Creates the codec for converting ResponseMapInfoMap from and to JSON.
     */
    implicit val decoder: Decoder[ResponseMapInfoMap] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseMapInfoMap] = deriveEncoder
}
