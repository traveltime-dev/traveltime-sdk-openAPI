package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param lat 
 * @param lng 
 */
data class Coords (

        @get:NotNull 
        @JsonProperty("lat") val lat: Double,

        @get:NotNull 
        @JsonProperty("lng") val lng: Double
) {

}

