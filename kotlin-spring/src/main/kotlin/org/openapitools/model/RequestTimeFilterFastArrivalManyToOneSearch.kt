package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.RequestArrivalTimePeriod
import org.openapitools.model.RequestTimeFilterFastProperty
import org.openapitools.model.RequestTransportationFast
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
 * @param arrivalLocationId 
 * @param departureLocationIds 
 * @param transportation 
 * @param travelTime 
 * @param arrivalTimePeriod 
 * @param properties 
 */
data class RequestTimeFilterFastArrivalManyToOneSearch(

    @field:JsonProperty("id", required = true) val id: kotlin.String,

    @field:JsonProperty("arrival_location_id", required = true) val arrivalLocationId: kotlin.String,

    @get:Size(min=1,max=100000) 
    @field:JsonProperty("departure_location_ids", required = true) val departureLocationIds: kotlin.collections.List<kotlin.String>,

    @field:Valid
    @field:JsonProperty("transportation", required = true) val transportation: RequestTransportationFast,

    @get:Min(60)
    @get:Max(14400)
    @field:JsonProperty("travel_time", required = true) val travelTime: kotlin.Int,

    @field:Valid
    @field:JsonProperty("arrival_time_period", required = true) val arrivalTimePeriod: RequestArrivalTimePeriod,

    @field:Valid
    @field:JsonProperty("properties", required = true) val properties: kotlin.collections.List<RequestTimeFilterFastProperty>
) {

}

