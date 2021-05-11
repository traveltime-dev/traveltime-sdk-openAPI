package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseTravelTimeStatistics
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
 * @param travelTimeReachable 
 * @param travelTimeAll 
 * @param coverage 
 */
data class ResponseTimeFilterPostcodeSectorProperties(

    @field:Valid
    @field:JsonProperty("travel_time_reachable") val travelTimeReachable: ResponseTravelTimeStatistics? = null,

    @field:Valid
    @field:JsonProperty("travel_time_all") val travelTimeAll: ResponseTravelTimeStatistics? = null,

    @field:JsonProperty("coverage") val coverage: kotlin.Double? = null
) {

}

