package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseTimeFilterLocation
import scala.collection.immutable.Seq

/**
 * 
 * @param searchUnderscoreid 
 * @param locations 
 * @param unreachable 
 */
case class ResponseTimeFilterResult(searchUnderscoreid: String,
                locations: Seq[ResponseTimeFilterLocation],
                unreachable: Seq[String]
                )

object ResponseTimeFilterResult {
    /**
     * Creates the codec for converting ResponseTimeFilterResult from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeFilterResult] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeFilterResult] = deriveEncoder
}
