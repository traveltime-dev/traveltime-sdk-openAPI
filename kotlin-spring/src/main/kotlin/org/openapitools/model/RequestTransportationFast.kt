package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonValue
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

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
    * Values: publicTransport,driving,drivingPlusPublicTransport
    */
    enum class Type(val value: kotlin.String) {
    
        @JsonProperty("public_transport") publicTransport("public_transport"),
    
        @JsonProperty("driving") driving("driving"),
    
        @JsonProperty("driving+public_transport") drivingPlusPublicTransport("driving+public_transport");
    
    }

}

