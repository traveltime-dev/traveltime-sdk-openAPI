package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseTimeFilterFastProperties
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param properties 
 */
case class ResponseTimeFilterFastLocation(id: String,
                properties: Seq[ResponseTimeFilterFastProperties]
                )

object ResponseTimeFilterFastLocation {
    /**
     * Creates the codec for converting ResponseTimeFilterFastLocation from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeFilterFastLocation] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeFilterFastLocation] = deriveEncoder
}
