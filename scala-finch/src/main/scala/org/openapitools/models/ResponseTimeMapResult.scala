package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ResponseShape
import org.openapitools.models.ResponseTimeMapProperties
import scala.collection.immutable.Seq

/**
 * 
 * @param searchUnderscoreid 
 * @param shapes 
 * @param properties 
 */
case class ResponseTimeMapResult(searchUnderscoreid: String,
                shapes: Seq[ResponseShape],
                properties: ResponseTimeMapProperties
                )

object ResponseTimeMapResult {
    /**
     * Creates the codec for converting ResponseTimeMapResult from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeMapResult] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeMapResult] = deriveEncoder
}
