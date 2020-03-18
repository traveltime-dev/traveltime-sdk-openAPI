package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param minUnderscorelat 
 * @param maxUnderscorelat 
 * @param minUnderscorelng 
 * @param maxUnderscorelng 
 */
case class ResponseBox(minUnderscorelat: Double,
                maxUnderscorelat: Double,
                minUnderscorelng: Double,
                maxUnderscorelng: Double
                )

object ResponseBox {
    /**
     * Creates the codec for converting ResponseBox from and to JSON.
     */
    implicit val decoder: Decoder[ResponseBox] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseBox] = deriveEncoder
}
