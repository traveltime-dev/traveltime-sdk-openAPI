package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonValue
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param type 
 * @param ptChangeDelay 
 * @param walkingTime 
 * @param drivingTimeToStation 
 * @param parkingTime 
 * @param boardingTime 
 */
data class RequestTransportation (

        @get:NotNull 
        @JsonProperty("type") val type: RequestTransportation.Type,

        @JsonProperty("pt_change_delay") val ptChangeDelay: Int? = null,

        @JsonProperty("walking_time") val walkingTime: Int? = null,

        @JsonProperty("driving_time_to_station") val drivingTimeToStation: Int? = null,

        @JsonProperty("parking_time") val parkingTime: Int? = null,

        @JsonProperty("boarding_time") val boardingTime: Int? = null
) {

    /**
    * 
    * Values: cycling,driving,drivingPlustrain,publicTransport,walking,coach,bus,train,ferry,drivingPlusferry,cyclingPlusferry
    */
    enum class Type(val value: String) {
    
        @JsonProperty("cycling") cycling("cycling"),
    
        @JsonProperty("driving") driving("driving"),
    
        @JsonProperty("driving+train") drivingPlustrain("driving+train"),
    
        @JsonProperty("public_transport") publicTransport("public_transport"),
    
        @JsonProperty("walking") walking("walking"),
    
        @JsonProperty("coach") coach("coach"),
    
        @JsonProperty("bus") bus("bus"),
    
        @JsonProperty("train") train("train"),
    
        @JsonProperty("ferry") ferry("ferry"),
    
        @JsonProperty("driving+ferry") drivingPlusferry("driving+ferry"),
    
        @JsonProperty("cycling+ferry") cyclingPlusferry("cycling+ferry");
    
    }

}

