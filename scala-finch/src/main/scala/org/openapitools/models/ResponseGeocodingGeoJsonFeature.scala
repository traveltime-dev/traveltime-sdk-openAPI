package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ResponseGeocodingGeometry
import org.openapitools.models.ResponseGeocodingProperties

/**
 * 
 * @param _type 
 * @param geometry 
 * @param properties 
 */
case class ResponseGeocodingGeoJsonFeature(_type: String,
                geometry: ResponseGeocodingGeometry,
                properties: ResponseGeocodingProperties
                )

object ResponseGeocodingGeoJsonFeature {
    /**
     * Creates the codec for converting ResponseGeocodingGeoJsonFeature from and to JSON.
     */
    implicit val decoder: Decoder[ResponseGeocodingGeoJsonFeature] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseGeocodingGeoJsonFeature] = deriveEncoder
}
