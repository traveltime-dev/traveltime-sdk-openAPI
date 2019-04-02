package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseTimeMapBoundingBoxesResult
import scala.collection.immutable.Seq

/**
 * 
 * @param results 
 */
case class ResponseTimeMapBoundingBoxes(results: Seq[ResponseTimeMapBoundingBoxesResult]
                )

object ResponseTimeMapBoundingBoxes {
    /**
     * Creates the codec for converting ResponseTimeMapBoundingBoxes from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeMapBoundingBoxes] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeMapBoundingBoxes] = deriveEncoder
}
