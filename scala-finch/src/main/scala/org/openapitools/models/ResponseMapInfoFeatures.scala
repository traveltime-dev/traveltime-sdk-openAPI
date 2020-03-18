package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ResponseMapInfoFeaturesPublicTransport

/**
 * 
 * @param publicUnderscoretransport 
 * @param fares 
 * @param postcodes 
 */
case class ResponseMapInfoFeatures(publicUnderscoretransport: Option[ResponseMapInfoFeaturesPublicTransport],
                fares: Boolean,
                postcodes: Boolean
                )

object ResponseMapInfoFeatures {
    /**
     * Creates the codec for converting ResponseMapInfoFeatures from and to JSON.
     */
    implicit val decoder: Decoder[ResponseMapInfoFeatures] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseMapInfoFeatures] = deriveEncoder
}
