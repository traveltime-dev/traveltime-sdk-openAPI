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

    @get:NotNull 
    @field:JsonProperty("id") val id: kotlin.String,

    @get:NotNull 
    @field:JsonProperty("arrival_location_id") val arrivalLocationId: kotlin.String,

    @get:NotNull @get:Size(min=1,max=100000) 
    @field:JsonProperty("departure_location_ids") val departureLocationIds: kotlin.collections.List<kotlin.String>,

    @get:NotNull 
    @field:JsonProperty("transportation") val transportation: RequestTransportationFast,

    @get:NotNull @get:Min(60) @get:Max(14400) 
    @field:JsonProperty("travel_time") val travelTime: kotlin.Int,

    @get:NotNull 
    @field:JsonProperty("arrival_time_period") val arrivalTimePeriod: RequestArrivalTimePeriod,

    @get:NotNull 
    @field:JsonProperty("properties") val properties: kotlin.collections.List<RequestTimeFilterFastProperty>
) {

}

