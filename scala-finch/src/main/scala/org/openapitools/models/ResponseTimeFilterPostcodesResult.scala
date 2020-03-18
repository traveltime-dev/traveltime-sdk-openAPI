package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ResponseTimeFilterPostcode
import scala.collection.immutable.Seq

/**
 * 
 * @param searchUnderscoreid 
 * @param postcodes 
 */
case class ResponseTimeFilterPostcodesResult(searchUnderscoreid: String,
                postcodes: Seq[ResponseTimeFilterPostcode]
                )

object ResponseTimeFilterPostcodesResult {
    /**
     * Creates the codec for converting ResponseTimeFilterPostcodesResult from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeFilterPostcodesResult] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeFilterPostcodesResult] = deriveEncoder
}
