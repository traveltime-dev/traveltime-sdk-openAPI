package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseTimeFilterFastResult
import scala.collection.immutable.Seq

/**
 * 
 * @param results 
 */
case class ResponseTimeFilterFast(results: Seq[ResponseTimeFilterFastResult]
                )

object ResponseTimeFilterFast {
    /**
     * Creates the codec for converting ResponseTimeFilterFast from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeFilterFast] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeFilterFast] = deriveEncoder
}
