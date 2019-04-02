package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonValue
import traveltimeplatform.models.Coords
import traveltimeplatform.models.ResponseTransportationMode
import javax.validation.Valid
import javax.validation.constraints.*

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
data class ResponseRoutePart (

        @get:NotNull 
        @JsonProperty("id") val id: String,

        @get:NotNull 
        @JsonProperty("type") val type: ResponseRoutePart.Type,

        @get:NotNull 
        @JsonProperty("mode") val mode: ResponseTransportationMode,

        @get:NotNull 
        @JsonProperty("directions") val directions: String,

        @get:NotNull 
        @JsonProperty("distance") val distance: Int,

        @get:NotNull 
        @JsonProperty("travel_time") val travelTime: Int,

        @get:NotNull 
        @JsonProperty("coords") val coords: List<Coords>,

        @JsonProperty("direction") val direction: String? = null,

        @JsonProperty("road") val road: String? = null,

        @JsonProperty("turn") val turn: String? = null,

        @JsonProperty("line") val line: String? = null,

        @JsonProperty("departure_station") val departureStation: String? = null,

        @JsonProperty("arrival_station") val arrivalStation: String? = null,

        @JsonProperty("departs_at") val departsAt: String? = null,

        @JsonProperty("arrives_at") val arrivesAt: String? = null,

        @JsonProperty("num_stops") val numStops: Int? = null
) {

    /**
    * 
    * Values: basic,startEnd,road,publicTransport
    */
    enum class Type(val value: String) {
    
        @JsonProperty("basic") basic("basic"),
    
        @JsonProperty("start_end") startEnd("start_end"),
    
        @JsonProperty("road") road("road"),
    
        @JsonProperty("public_transport") publicTransport("public_transport");
    
    }

}

