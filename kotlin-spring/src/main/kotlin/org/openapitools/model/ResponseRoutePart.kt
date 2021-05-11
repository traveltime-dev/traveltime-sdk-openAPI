package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonValue
import org.openapitools.model.Coords
import org.openapitools.model.ResponseTransportationMode
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
 * @param type 
 * @param mode 
 * @param directions 
 * @param distance 
 * @param travelTime 
 * @param coords 
 * @param direction 
 * @param road 
 * @param turn 
 * @param line 
 * @param departureStation 
 * @param arrivalStation 
 * @param departsAt 
 * @param arrivesAt 
 * @param numStops 
 */
data class ResponseRoutePart(

    @field:JsonProperty("id", required = true) val id: kotlin.String,

    @field:JsonProperty("type", required = true) val type: ResponseRoutePart.Type,

    @field:Valid
    @field:JsonProperty("mode", required = true) val mode: ResponseTransportationMode,

    @field:JsonProperty("directions", required = true) val directions: kotlin.String,

    @field:JsonProperty("distance", required = true) val distance: kotlin.Int,

    @field:JsonProperty("travel_time", required = true) val travelTime: kotlin.Int,

    @field:Valid
    @field:JsonProperty("coords", required = true) val coords: kotlin.collections.List<Coords>,

    @field:JsonProperty("direction") val direction: kotlin.String? = null,

    @field:JsonProperty("road") val road: kotlin.String? = null,

    @field:JsonProperty("turn") val turn: kotlin.String? = null,

    @field:JsonProperty("line") val line: kotlin.String? = null,

    @field:JsonProperty("departure_station") val departureStation: kotlin.String? = null,

    @field:JsonProperty("arrival_station") val arrivalStation: kotlin.String? = null,

    @field:JsonProperty("departs_at") val departsAt: kotlin.String? = null,

    @field:JsonProperty("arrives_at") val arrivesAt: kotlin.String? = null,

    @field:JsonProperty("num_stops") val numStops: kotlin.Int? = null
) {

    /**
    * 
    * Values: basic,startEnd,road,publicTransport
    */
    enum class Type(val value: kotlin.String) {
    
        @JsonProperty("basic") basic("basic"),
    
        @JsonProperty("start_end") startEnd("start_end"),
    
        @JsonProperty("road") road("road"),
    
        @JsonProperty("public_transport") publicTransport("public_transport");
    
    }

}

