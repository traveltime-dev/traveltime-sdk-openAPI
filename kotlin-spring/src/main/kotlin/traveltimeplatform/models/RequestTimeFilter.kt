package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.RequestLocation
import traveltimeplatform.models.RequestTimeFilterArrivalSearch
import traveltimeplatform.models.RequestTimeFilterDepartureSearch
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param locations 
 * @param departureSearches 
 * @param arrivalSearches 
 */
data class RequestTimeFilter (

        @get:NotNull @get:Size(min=1) 
        @JsonProperty("locations") val locations: List<RequestLocation>,
@get:Size(max=10) 
        @JsonProperty("departure_searches") val departureSearches: List<RequestTimeFilterDepartureSearch>? = null,
@get:Size(max=10) 
        @JsonProperty("arrival_searches") val arrivalSearches: List<RequestTimeFilterArrivalSearch>? = null
) {

}

