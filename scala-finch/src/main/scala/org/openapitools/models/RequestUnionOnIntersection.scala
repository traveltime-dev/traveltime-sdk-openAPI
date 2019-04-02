package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import traveltimeplatform._
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param searchUnderscoreids 
 */
case class RequestUnionOnIntersection(id: String,
                searchUnderscoreids: Seq[String]
                )

object RequestUnionOnIntersection {
    /**
     * Creates the codec for converting RequestUnionOnIntersection from and to JSON.
     */
    implicit val decoder: Decoder[RequestUnionOnIntersection] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestUnionOnIntersection] = deriveEncoder
}
