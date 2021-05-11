package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.RequestRangeFull
import org.openapitools.model.RequestTimeFilterPostcodeSectorsProperty
import org.openapitools.model.RequestTransportation
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
 * @param id 
 * @param transportation 
 * @param travelTime 
 * @param arrivalTime 
 * @param reachablePostcodesThreshold 
 * @param properties 
 * @param range 
 */
data class RequestTimeFilterPostcodeSectorsArrivalSearch(

    @field:JsonProperty("id", required = true) val id: kotlin.String,

    @field:Valid
    @field:JsonProperty("transportation", required = true) val transportation: RequestTransportation,

    @get:Min(60)
    @get:Max(14400)
    @field:JsonProperty("travel_time", required = true) val travelTime: kotlin.Int,

    @field:JsonProperty("arrival_time", required = true) val arrivalTime: java.time.OffsetDateTime,

    @field:JsonProperty("reachable_postcodes_threshold", required = true) val reachablePostcodesThreshold: kotlin.Double,

    @field:Valid
    @field:JsonProperty("properties", required = true) val properties: kotlin.collections.List<RequestTimeFilterPostcodeSectorsProperty>,

    @field:Valid
    @field:JsonProperty("range") val range: RequestRangeFull? = null
) {

}

