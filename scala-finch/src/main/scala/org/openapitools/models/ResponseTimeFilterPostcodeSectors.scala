package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ResponseTimeFilterPostcodeSectorsResult
import scala.collection.immutable.Seq

/**
 * 
 * @param results 
 */
case class ResponseTimeFilterPostcodeSectors(results: Seq[ResponseTimeFilterPostcodeSectorsResult]
                )

object ResponseTimeFilterPostcodeSectors {
    /**
     * Creates the codec for converting ResponseTimeFilterPostcodeSectors from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeFilterPostcodeSectors] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeFilterPostcodeSectors] = deriveEncoder
}
