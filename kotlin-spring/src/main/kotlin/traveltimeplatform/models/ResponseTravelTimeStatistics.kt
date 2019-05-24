package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

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

