package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseDistanceBreakdownItem
import org.openapitools.model.ResponseFares
import org.openapitools.model.ResponseRoute
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
 * @param travelTime 
 * @param distance 
 * @param distanceBreakdown 
 * @param fares 
 * @param route 
 */
data class ResponseTimeFilterProperties(

    @field:JsonProperty("travel_time") val travelTime: kotlin.Int? = null,

    @field:JsonProperty("distance") val distance: kotlin.Int? = null,

    @field:Valid
    @field:JsonProperty("distance_breakdown") val distanceBreakdown: kotlin.collections.List<ResponseDistanceBreakdownItem>? = null,

    @field:Valid
    @field:JsonProperty("fares") val fares: ResponseFares? = null,

    @field:Valid
    @field:JsonProperty("route") val route: ResponseRoute? = null
) {

}

