package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.Coords
import org.openapitools.model.RequestRangeNoMaxResults
import org.openapitools.model.RequestTimeMapProperty
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
 * @param coords 
 * @param transportation 
 * @param travelTime 
 * @param departureTime 
 * @param properties 
 * @param range 
 */
data class RequestTimeMapDepartureSearch(

    @get:NotNull 
    @field:JsonProperty("id") val id: kotlin.String,

    @get:NotNull 
    @field:JsonProperty("coords") val coords: Coords,

    @get:NotNull 
    @field:JsonProperty("transportation") val transportation: RequestTransportation,

    @get:NotNull @get:Min(60) @get:Max(14400) 
    @field:JsonProperty("travel_time") val travelTime: kotlin.Int,

    @get:NotNull 
    @field:JsonProperty("departure_time") val departureTime: java.time.OffsetDateTime,

    @field:JsonProperty("properties") val properties: kotlin.collections.List<RequestTimeMapProperty>? = null,

    @field:JsonProperty("range") val range: RequestRangeNoMaxResults? = null
) {

}

