package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param minLat 
 * @param maxLat 
 * @param minLng 
 * @param maxLng 
 */
data class ResponseBox (

        @get:NotNull 
        @JsonProperty("min_lat") val minLat: Double,

        @get:NotNull 
        @JsonProperty("max_lat") val maxLat: Double,

        @get:NotNull 
        @JsonProperty("min_lng") val minLng: Double,

        @get:NotNull 
        @JsonProperty("max_lng") val maxLng: Double
) {

}

