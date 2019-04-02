package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseTimeFilterLocation
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param searchId 
 * @param locations 
 * @param unreachable 
 */
data class ResponseTimeFilterResult (

        @get:NotNull 
        @JsonProperty("search_id") val searchId: String,

        @get:NotNull 
        @JsonProperty("locations") val locations: List<ResponseTimeFilterLocation>,

        @get:NotNull 
        @JsonProperty("unreachable") val unreachable: List<String>
) {

}

