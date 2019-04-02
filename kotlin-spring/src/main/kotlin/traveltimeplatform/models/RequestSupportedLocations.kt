package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.RequestLocation
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param locations 
 */
data class RequestSupportedLocations (

        @get:NotNull @get:Size(min=1) 
        @JsonProperty("locations") val locations: List<RequestLocation>
) {

}

