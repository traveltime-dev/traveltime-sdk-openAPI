package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.RequestRangeFull
import org.openapitools.model.RequestRoutesProperty
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
 * @param departureLocationId 
 * @param arrivalLocationIds 
 * @param transportation 
 * @param departureTime 
 * @param properties 
 * @param range 
 */
data class RequestRoutesDepartureSearch(

    @get:NotNull 
    @field:JsonProperty("id") val id: kotlin.String,

    @get:NotNull 
    @field:JsonProperty("departure_location_id") val departureLocationId: kotlin.String,

    @get:NotNull @get:Size(min=1,max=2) 
    @field:JsonProperty("arrival_location_ids") val arrivalLocationIds: kotlin.collections.List<kotlin.String>,

    @get:NotNull 
    @field:JsonProperty("transportation") val transportation: RequestTransportation,

    @get:NotNull 
    @field:JsonProperty("departure_time") val departureTime: java.time.OffsetDateTime,

    @get:NotNull 
    @field:JsonProperty("properties") val properties: kotlin.collections.List<RequestRoutesProperty>,

    @field:JsonProperty("range") val range: RequestRangeFull? = null
) {

}

