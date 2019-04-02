package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseTimeFilterPostcodesProperties
import scala.collection.immutable.Seq

/**
 * 
 * @param code 
 * @param properties 
 */
case class ResponseTimeFilterPostcode(code: String,
                properties: Seq[ResponseTimeFilterPostcodesProperties]
                )

object ResponseTimeFilterPostcode {
    /**
     * Creates the codec for converting ResponseTimeFilterPostcode from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeFilterPostcode] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeFilterPostcode] = deriveEncoder
}
