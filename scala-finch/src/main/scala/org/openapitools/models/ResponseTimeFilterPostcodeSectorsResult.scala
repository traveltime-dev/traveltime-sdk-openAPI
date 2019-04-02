package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseTimeFilterPostcodeSector
import scala.collection.immutable.Seq

/**
 * 
 * @param searchUnderscoreid 
 * @param sectors 
 */
case class ResponseTimeFilterPostcodeSectorsResult(searchUnderscoreid: String,
                sectors: Seq[ResponseTimeFilterPostcodeSector]
                )

object ResponseTimeFilterPostcodeSectorsResult {
    /**
     * Creates the codec for converting ResponseTimeFilterPostcodeSectorsResult from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeFilterPostcodeSectorsResult] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeFilterPostcodeSectorsResult] = deriveEncoder
}
