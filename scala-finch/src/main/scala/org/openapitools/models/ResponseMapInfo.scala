package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import org.openapitools.models.ResponseMapInfoMap
import scala.collection.immutable.Seq

/**
 * 
 * @param maps 
 */
case class ResponseMapInfo(maps: Seq[ResponseMapInfoMap]
                )

object ResponseMapInfo {
    /**
     * Creates the codec for converting ResponseMapInfo from and to JSON.
     */
    implicit val decoder: Decoder[ResponseMapInfo] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseMapInfo] = deriveEncoder
}
