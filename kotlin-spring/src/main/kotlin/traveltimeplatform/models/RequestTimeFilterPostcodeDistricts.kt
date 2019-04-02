package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.RequestTimeFilterPostcodeDistrictsArrivalSearch
import traveltimeplatform.models.RequestTimeFilterPostcodeDistrictsDepartureSearch
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param departureSearches 
 * @param arrivalSearches 
 */
data class RequestTimeFilterPostcodeDistricts (
@get:Size(max=10) 
        @JsonProperty("departure_searches") val departureSearches: List<RequestTimeFilterPostcodeDistrictsDepartureSearch>? = null,
@get:Size(max=10) 
        @JsonProperty("arrival_searches") val arrivalSearches: List<RequestTimeFilterPostcodeDistrictsArrivalSearch>? = null
) {

}

