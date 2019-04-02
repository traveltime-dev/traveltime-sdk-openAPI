package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.RequestTimeFilterPostcodesArrivalSearch
import traveltimeplatform.models.RequestTimeFilterPostcodesDepartureSearch
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param departureSearches 
 * @param arrivalSearches 
 */
data class RequestTimeFilterPostcodes (
@get:Size(max=10) 
        @JsonProperty("departure_searches") val departureSearches: List<RequestTimeFilterPostcodesDepartureSearch>? = null,
@get:Size(max=10) 
        @JsonProperty("arrival_searches") val arrivalSearches: List<RequestTimeFilterPostcodesArrivalSearch>? = null
) {

}

