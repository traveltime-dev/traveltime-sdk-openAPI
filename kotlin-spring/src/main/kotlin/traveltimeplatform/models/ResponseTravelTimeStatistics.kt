package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param min 
 * @param max 
 * @param mean 
 * @param median 
 */
data class ResponseTravelTimeStatistics (

        @get:NotNull 
        @JsonProperty("min") val min: Int,

        @get:NotNull 
        @JsonProperty("max") val max: Int,

        @get:NotNull 
        @JsonProperty("mean") val mean: Int,

        @get:NotNull 
        @JsonProperty("median") val median: Int
) {

}

