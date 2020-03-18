package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import scala.collection.immutable.Seq

/**
 * 
 * @param _type 
 * @param coordinates 
 */
case class ResponseGeocodingGeometry(_type: String,
                coordinates: Seq[Double]
                )

object ResponseGeocodingGeometry {
    /**
     * Creates the codec for converting ResponseGeocodingGeometry from and to JSON.
     */
    implicit val decoder: Decoder[ResponseGeocodingGeometry] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseGeocodingGeometry] = deriveEncoder
}
