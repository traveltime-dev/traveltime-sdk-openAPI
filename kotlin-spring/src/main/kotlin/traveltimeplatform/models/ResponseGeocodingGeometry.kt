package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param type 
 * @param coordinates 
 */
data class ResponseGeocodingGeometry (

        @get:NotNull 
        @JsonProperty("type") val type: String,

        @get:NotNull 
        @JsonProperty("coordinates") val coordinates: List<Double>
) {

}

