package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseTransportationMode
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param mode 
 * @param distance 
 */
data class ResponseDistanceBreakdownItem (

        @get:NotNull 
        @JsonProperty("mode") val mode: ResponseTransportationMode,

        @get:NotNull 
        @JsonProperty("distance") val distance: Int
) {

}

