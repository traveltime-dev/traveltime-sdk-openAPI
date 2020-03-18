package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ResponseTimeFilterFastLocation
import scala.collection.immutable.Seq

/**
 * 
 * @param searchUnderscoreid 
 * @param locations 
 * @param unreachable 
 */
case class ResponseTimeFilterFastResult(searchUnderscoreid: String,
                locations: Seq[ResponseTimeFilterFastLocation],
                unreachable: Seq[String]
                )

object ResponseTimeFilterFastResult {
    /**
     * Creates the codec for converting ResponseTimeFilterFastResult from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeFilterFastResult] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeFilterFastResult] = deriveEncoder
}
