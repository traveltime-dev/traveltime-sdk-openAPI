package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import java.time.ZonedDateTime

/**
 * 
 * @param dateUnderscorestart 
 * @param dateUnderscoreend 
 */
case class ResponseMapInfoFeaturesPublicTransport(dateUnderscorestart: ZonedDateTime,
                dateUnderscoreend: ZonedDateTime
                )

object ResponseMapInfoFeaturesPublicTransport {
    /**
     * Creates the codec for converting ResponseMapInfoFeaturesPublicTransport from and to JSON.
     */
    implicit val decoder: Decoder[ResponseMapInfoFeaturesPublicTransport] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseMapInfoFeaturesPublicTransport] = deriveEncoder
}
