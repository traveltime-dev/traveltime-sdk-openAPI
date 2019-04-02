package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseRoutesLocation
import scala.collection.immutable.Seq

/**
 * 
 * @param searchUnderscoreid 
 * @param locations 
 * @param unreachable 
 */
case class ResponseRoutesResult(searchUnderscoreid: String,
                locations: Seq[ResponseRoutesLocation],
                unreachable: Seq[String]
                )

object ResponseRoutesResult {
    /**
     * Creates the codec for converting ResponseRoutesResult from and to JSON.
     */
    implicit val decoder: Decoder[ResponseRoutesResult] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseRoutesResult] = deriveEncoder
}
