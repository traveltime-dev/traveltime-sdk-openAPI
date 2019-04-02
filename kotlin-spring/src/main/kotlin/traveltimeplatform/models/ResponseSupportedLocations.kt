package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseSupportedLocation
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param locations 
 * @param unsupportedLocations 
 */
data class ResponseSupportedLocations (

        @get:NotNull 
        @JsonProperty("locations") val locations: List<ResponseSupportedLocation>,

        @get:NotNull 
        @JsonProperty("unsupported_locations") val unsupportedLocations: List<String>
) {

}

