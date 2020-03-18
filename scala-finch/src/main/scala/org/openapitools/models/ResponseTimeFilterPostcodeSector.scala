package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ResponseTimeFilterPostcodeSectorProperties

/**
 * 
 * @param code 
 * @param properties 
 */
case class ResponseTimeFilterPostcodeSector(code: String,
                properties: ResponseTimeFilterPostcodeSectorProperties
                )

object ResponseTimeFilterPostcodeSector {
    /**
     * Creates the codec for converting ResponseTimeFilterPostcodeSector from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeFilterPostcodeSector] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeFilterPostcodeSector] = deriveEncoder
}
