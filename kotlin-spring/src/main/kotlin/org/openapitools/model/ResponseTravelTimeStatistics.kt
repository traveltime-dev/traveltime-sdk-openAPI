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
 * @param min 
 * @param max 
 * @param mean 
 * @param median 
 */
data class ResponseTravelTimeStatistics(

    @field:JsonProperty("min", required = true) val min: kotlin.Int,

    @field:JsonProperty("max", required = true) val max: kotlin.Int,

    @field:JsonProperty("mean", required = true) val mean: kotlin.Int,

    @field:JsonProperty("median", required = true) val median: kotlin.Int
) {

}

