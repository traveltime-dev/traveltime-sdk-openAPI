package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.RequestLocation
import traveltimeplatform.models.RequestRoutesArrivalSearch
import traveltimeplatform.models.RequestRoutesDepartureSearch
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param locations 
 * @param departureSearches 
 * @param arrivalSearches 
 */
data class RequestRoutes (

        @get:NotNull @get:Size(min=1) 
        @JsonProperty("locations") val locations: List<RequestLocation>,
@get:Size(max=10) 
        @JsonProperty("departure_searches") val departureSearches: List<RequestRoutesDepartureSearch>? = null,
@get:Size(max=10) 
        @JsonProperty("arrival_searches") val arrivalSearches: List<RequestRoutesArrivalSearch>? = null
) {

}

