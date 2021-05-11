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
import javax.validation.Valid

/**
 * 
 * @param minLat 
 * @param maxLat 
 * @param minLng 
 * @param maxLng 
 */
data class ResponseBox(

    @field:JsonProperty("min_lat", required = true) val minLat: kotlin.Double,

    @field:JsonProperty("max_lat", required = true) val maxLat: kotlin.Double,

    @field:JsonProperty("min_lng", required = true) val minLng: kotlin.Double,

    @field:JsonProperty("max_lng", required = true) val maxLng: kotlin.Double
) {

}

