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
 * @param min 
 * @param max 
 * @param mean 
 * @param median 
 */
data class ResponseTravelTimeStatistics(

    @get:NotNull 
    @field:JsonProperty("min") val min: kotlin.Int,

    @get:NotNull 
    @field:JsonProperty("max") val max: kotlin.Int,

    @get:NotNull 
    @field:JsonProperty("mean") val mean: kotlin.Int,

    @get:NotNull 
    @field:JsonProperty("median") val median: kotlin.Int
) {

}

