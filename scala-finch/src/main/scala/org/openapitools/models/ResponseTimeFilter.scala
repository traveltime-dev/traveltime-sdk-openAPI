package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseTimeFilterResult
import scala.collection.immutable.Seq

/**
 * 
 * @param results 
 */
case class ResponseTimeFilter(results: Seq[ResponseTimeFilterResult]
                )

object ResponseTimeFilter {
    /**
     * Creates the codec for converting ResponseTimeFilter from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeFilter] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeFilter] = deriveEncoder
}
