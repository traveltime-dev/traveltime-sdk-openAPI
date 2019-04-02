package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseTimeFilterFastLocation
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param searchId 
 * @param locations 
 * @param unreachable 
 */
data class ResponseTimeFilterFastResult (

        @get:NotNull 
        @JsonProperty("search_id") val searchId: String,

        @get:NotNull 
        @JsonProperty("locations") val locations: List<ResponseTimeFilterFastLocation>,

        @get:NotNull 
        @JsonProperty("unreachable") val unreachable: List<String>
) {

}

