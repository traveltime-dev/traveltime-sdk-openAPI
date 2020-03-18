package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.RequestTimeFilterFastArrivalManyToOneSearch
import org.openapitools.models.RequestTimeFilterFastArrivalOneToManySearch
import scala.collection.immutable.Seq

/**
 * 
 * @param manyUnderscoretoUnderscoreone 
 * @param oneUnderscoretoUnderscoremany 
 */
case class RequestTimeFilterFastArrivalSearches(manyUnderscoretoUnderscoreone: Option[Seq[RequestTimeFilterFastArrivalManyToOneSearch]],
                oneUnderscoretoUnderscoremany: Option[Seq[RequestTimeFilterFastArrivalOneToManySearch]]
                )

object RequestTimeFilterFastArrivalSearches {
    /**
     * Creates the codec for converting RequestTimeFilterFastArrivalSearches from and to JSON.
     */
    implicit val decoder: Decoder[RequestTimeFilterFastArrivalSearches] = deriveDecoder
    implicit val encoder: ObjectEncoder[RequestTimeFilterFastArrivalSearches] = deriveEncoder
}
