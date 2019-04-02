package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.Coords
import scala.collection.immutable.Seq

/**
 * 
 * @param shell 
 * @param holes 
 */
case class ResponseShape(shell: Seq[Coords],
                holes: Seq[Seq[Coords]]
                )

object ResponseShape {
    /**
     * Creates the codec for converting ResponseShape from and to JSON.
     */
    implicit val decoder: Decoder[ResponseShape] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseShape] = deriveEncoder
}
