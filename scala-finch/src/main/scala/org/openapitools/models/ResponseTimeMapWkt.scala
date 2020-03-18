package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ResponseTimeMapWktResult
import scala.collection.immutable.Seq

/**
 * 
 * @param results 
 */
case class ResponseTimeMapWkt(results: Seq[ResponseTimeMapWktResult]
                )

object ResponseTimeMapWkt {
    /**
     * Creates the codec for converting ResponseTimeMapWkt from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeMapWkt] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeMapWkt] = deriveEncoder
}
