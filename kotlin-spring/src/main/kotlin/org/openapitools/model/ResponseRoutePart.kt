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

    @get:NotNull 
    @JsonProperty("id") val id: kotlin.String,

    @get:NotNull 
    @JsonProperty("type") val type: ResponseRoutePart.Type,

    @get:NotNull 
    @JsonProperty("mode") val mode: ResponseTransportationMode,

    @get:NotNull 
    @JsonProperty("directions") val directions: kotlin.String,

    @get:NotNull 
    @JsonProperty("distance") val distance: kotlin.Int,

    @get:NotNull 
    @JsonProperty("travel_time") val travelTime: kotlin.Int,

    @get:NotNull 
    @JsonProperty("coords") val coords: kotlin.collections.List<Coords>,

    @JsonProperty("direction") val direction: kotlin.String? = null,

    @JsonProperty("road") val road: kotlin.String? = null,

    @JsonProperty("turn") val turn: kotlin.String? = null,

    @JsonProperty("line") val line: kotlin.String? = null,

    @JsonProperty("departure_station") val departureStation: kotlin.String? = null,

    @JsonProperty("arrival_station") val arrivalStation: kotlin.String? = null,

    @JsonProperty("departs_at") val departsAt: kotlin.String? = null,

    @JsonProperty("arrives_at") val arrivesAt: kotlin.String? = null,

    @JsonProperty("num_stops") val numStops: kotlin.Int? = null
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

