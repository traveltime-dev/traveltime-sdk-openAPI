package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ResponseRoutesProperties
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param properties 
 */
case class ResponseRoutesLocation(id: String,
                properties: Seq[ResponseRoutesProperties]
                )

object ResponseRoutesLocation {
    /**
     * Creates the codec for converting ResponseRoutesLocation from and to JSON.
     */
    implicit val decoder: Decoder[ResponseRoutesLocation] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseRoutesLocation] = deriveEncoder
}
