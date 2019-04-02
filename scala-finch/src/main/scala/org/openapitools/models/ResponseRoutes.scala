package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseRoutesResult
import scala.collection.immutable.Seq

/**
 * 
 * @param results 
 */
case class ResponseRoutes(results: Seq[ResponseRoutesResult]
                )

object ResponseRoutes {
    /**
     * Creates the codec for converting ResponseRoutes from and to JSON.
     */
    implicit val decoder: Decoder[ResponseRoutes] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseRoutes] = deriveEncoder
}
