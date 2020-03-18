package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ResponseMapInfoFeatures

/**
 * 
 * @param name 
 * @param label 
 * @param score 
 * @param houseUnderscorenumber 
 * @param street 
 * @param region 
 * @param regionUnderscorecode 
 * @param neighbourhood 
 * @param county 
 * @param macroregion 
 * @param city 
 * @param country 
 * @param countryUnderscorecode 
 * @param continent 
 * @param postcode 
 * @param features 
 */
case class ResponseGeocodingProperties(name: String,
                label: String,
                score: Option[Double],
                houseUnderscorenumber: Option[String],
                street: Option[String],
                region: Option[String],
                regionUnderscorecode: Option[String],
                neighbourhood: Option[String],
                county: Option[String],
                macroregion: Option[String],
                city: Option[String],
                country: Option[String],
                countryUnderscorecode: Option[String],
                continent: Option[String],
                postcode: Option[String],
                features: Option[ResponseMapInfoFeatures]
                )

object ResponseGeocodingProperties {
    /**
     * Creates the codec for converting ResponseGeocodingProperties from and to JSON.
     */
    implicit val decoder: Decoder[ResponseGeocodingProperties] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseGeocodingProperties] = deriveEncoder
}
