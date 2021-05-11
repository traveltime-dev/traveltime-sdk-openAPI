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
import javax.validation.Valid

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

    @field:JsonProperty("id", required = true) val id: kotlin.String,

    @field:JsonProperty("departure_location_id", required = true) val departureLocationId: kotlin.String,

    @get:Size(min=1,max=2) 
    @field:JsonProperty("arrival_location_ids", required = true) val arrivalLocationIds: kotlin.collections.List<kotlin.String>,

    @field:Valid
    @field:JsonProperty("transportation", required = true) val transportation: RequestTransportation,

    @field:JsonProperty("departure_time", required = true) val departureTime: java.time.OffsetDateTime,

    @field:Valid
    @field:JsonProperty("properties", required = true) val properties: kotlin.collections.List<RequestRoutesProperty>,

    @field:Valid
    @field:JsonProperty("range") val range: RequestRangeFull? = null
) {

}

