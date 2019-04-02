package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonValue
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param type 
 */
data class RequestTransportationFast (

        @get:NotNull 
        @JsonProperty("type") val type: RequestTransportationFast.Type
) {

    /**
    * 
    * Values: publicTransport,driving,drivingPluspublicTransport
    */
    enum class Type(val value: String) {
    
        @JsonProperty("public_transport") publicTransport("public_transport"),
    
        @JsonProperty("driving") driving("driving"),
    
        @JsonProperty("driving+public_transport") drivingPluspublicTransport("driving+public_transport");
    
    }

}

