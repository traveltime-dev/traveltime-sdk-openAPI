package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

/**
 * 
 * @param minLat 
 * @param maxLat 
 * @param minLng 
 * @param maxLng 
 */
data class ResponseBox(

    @get:NotNull 
    @field:JsonProperty("min_lat") val minLat: kotlin.Double,

    @get:NotNull 
    @field:JsonProperty("max_lat") val maxLat: kotlin.Double,

    @get:NotNull 
    @field:JsonProperty("min_lng") val minLng: kotlin.Double,

    @get:NotNull 
    @field:JsonProperty("max_lng") val maxLng: kotlin.Double
) {

}

