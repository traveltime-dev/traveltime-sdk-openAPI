package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ResponseGeocodingGeoJsonFeature
import scala.collection.immutable.Seq

/**
 * 
 * @param _type 
 * @param features 
 */
case class ResponseGeocoding(_type: String,
                features: Seq[ResponseGeocodingGeoJsonFeature]
                )

object ResponseGeocoding {
    /**
     * Creates the codec for converting ResponseGeocoding from and to JSON.
     */
    implicit val decoder: Decoder[ResponseGeocoding] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseGeocoding] = deriveEncoder
}
