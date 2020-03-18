package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.RequestRangeFull
import org.openapitools.model.RequestTimeFilterProperty
import org.openapitools.model.RequestTransportation
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
 * @param departureLocationIds 
 * @param arrivalLocationId 
 * @param transportation 
 * @param travelTime 
 * @param arrivalTime 
 * @param properties 
 * @param range 
 */
data class RequestTimeFilterArrivalSearch(

    @get:NotNull 
    @JsonProperty("id") val id: kotlin.String,

    @get:NotNull @get:Size(min=1,max=2000) 
    @JsonProperty("departure_location_ids") val departureLocationIds: kotlin.collections.List<kotlin.String>,

    @get:NotNull 
    @JsonProperty("arrival_location_id") val arrivalLocationId: kotlin.String,

    @get:NotNull 
    @JsonProperty("transportation") val transportation: RequestTransportation,

    @get:NotNull @get:Min(60) @get:Max(14400) 
    @JsonProperty("travel_time") val travelTime: kotlin.Int,

    @get:NotNull 
    @JsonProperty("arrival_time") val arrivalTime: java.time.OffsetDateTime,

    @get:NotNull 
    @JsonProperty("properties") val properties: kotlin.collections.List<RequestTimeFilterProperty>,

    @JsonProperty("range") val range: RequestRangeFull? = null
) {

}

