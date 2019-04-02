package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.RequestLocation
import traveltimeplatform.models.RequestTimeFilterFastArrivalSearches
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param locations 
 * @param arrivalSearches 
 */
data class RequestTimeFilterFast (

        @get:NotNull @get:Size(min=1) 
        @JsonProperty("locations") val locations: List<RequestLocation>,

        @get:NotNull 
        @JsonProperty("arrival_searches") val arrivalSearches: RequestTimeFilterFastArrivalSearches
) {

}

