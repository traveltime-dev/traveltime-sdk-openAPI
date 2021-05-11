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
 * @param enabled 
 * @param maxResults 
 * @param width 
 */
data class RequestRangeFull(

    @field:JsonProperty("enabled", required = true) val enabled: kotlin.Boolean,

    @get:Min(1)
    @get:Max(5)
    @field:JsonProperty("max_results", required = true) val maxResults: kotlin.Int,

    @get:Min(1)
    @get:Max(43200)
    @field:JsonProperty("width", required = true) val width: kotlin.Int
) {

}

