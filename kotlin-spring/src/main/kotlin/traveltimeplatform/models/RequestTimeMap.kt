package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.RequestTimeMapArrivalSearch
import traveltimeplatform.models.RequestTimeMapDepartureSearch
import traveltimeplatform.models.RequestUnionOnIntersection
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

/**
 * 
 * @param departureSearches 
 * @param arrivalSearches 
 * @param unions 
 * @param intersections 
 */
data class RequestTimeMap (
@get:Size(max=10) 
        @JsonProperty("departure_searches") val departureSearches: List<RequestTimeMapDepartureSearch>? = null,
@get:Size(max=10) 
        @JsonProperty("arrival_searches") val arrivalSearches: List<RequestTimeMapArrivalSearch>? = null,
@get:Size(max=10) 
        @JsonProperty("unions") val unions: List<RequestUnionOnIntersection>? = null,
@get:Size(max=10) 
        @JsonProperty("intersections") val intersections: List<RequestUnionOnIntersection>? = null
) {

}

