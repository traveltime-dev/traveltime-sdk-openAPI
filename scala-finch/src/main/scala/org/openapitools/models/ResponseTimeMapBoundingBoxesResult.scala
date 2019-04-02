package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseBoundingBox
import org.openapitools.models.ResponseTimeMapProperties
import scala.collection.immutable.Seq

/**
 * 
 * @param searchUnderscoreid 
 * @param boundingUnderscoreboxes 
 * @param properties 
 */
case class ResponseTimeMapBoundingBoxesResult(searchUnderscoreid: String,
                boundingUnderscoreboxes: Seq[ResponseBoundingBox],
                properties: ResponseTimeMapProperties
                )

object ResponseTimeMapBoundingBoxesResult {
    /**
     * Creates the codec for converting ResponseTimeMapBoundingBoxesResult from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeMapBoundingBoxesResult] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeMapBoundingBoxesResult] = deriveEncoder
}
