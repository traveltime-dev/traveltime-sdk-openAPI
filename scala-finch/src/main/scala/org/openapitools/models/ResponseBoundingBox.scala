package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseBox
import scala.collection.immutable.Seq

/**
 * 
 * @param envelope 
 * @param boxes 
 */
case class ResponseBoundingBox(envelope: ResponseBox,
                boxes: Seq[ResponseBox]
                )

object ResponseBoundingBox {
    /**
     * Creates the codec for converting ResponseBoundingBox from and to JSON.
     */
    implicit val decoder: Decoder[ResponseBoundingBox] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseBoundingBox] = deriveEncoder
}
