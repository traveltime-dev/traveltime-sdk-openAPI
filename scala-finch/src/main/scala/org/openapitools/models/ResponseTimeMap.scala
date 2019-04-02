package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseTimeMapResult
import scala.collection.immutable.Seq

/**
 * 
 * @param results 
 */
case class ResponseTimeMap(results: Seq[ResponseTimeMapResult]
                )

object ResponseTimeMap {
    /**
     * Creates the codec for converting ResponseTimeMap from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeMap] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeMap] = deriveEncoder
}
