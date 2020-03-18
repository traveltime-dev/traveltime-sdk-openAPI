package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ResponseTimeFilterPostcodesResult
import scala.collection.immutable.Seq

/**
 * 
 * @param results 
 */
case class ResponseTimeFilterPostcodes(results: Seq[ResponseTimeFilterPostcodesResult]
                )

object ResponseTimeFilterPostcodes {
    /**
     * Creates the codec for converting ResponseTimeFilterPostcodes from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeFilterPostcodes] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeFilterPostcodes] = deriveEncoder
}
