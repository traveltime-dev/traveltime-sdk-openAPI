package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.RequestTimeFilterPostcodeSectorsArrivalSearch
import traveltimeplatform.models.RequestTimeFilterPostcodeSectorsDepartureSearch
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param departureSearches 
 * @param arrivalSearches 
 */
data class RequestTimeFilterPostcodeSectors (
@get:Size(max=10) 
        @JsonProperty("departure_searches") val departureSearches: List<RequestTimeFilterPostcodeSectorsDepartureSearch>? = null,
@get:Size(max=10) 
        @JsonProperty("arrival_searches") val arrivalSearches: List<RequestTimeFilterPostcodeSectorsArrivalSearch>? = null
) {

}

