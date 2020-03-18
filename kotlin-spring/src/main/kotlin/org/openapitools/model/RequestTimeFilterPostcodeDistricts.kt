package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.RequestTimeFilterPostcodeDistrictsArrivalSearch
import org.openapitools.model.RequestTimeFilterPostcodeDistrictsDepartureSearch
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
 */
data class RequestTimeFilterPostcodeDistricts(
@get:Size(max=10) 
    @JsonProperty("departure_searches") val departureSearches: kotlin.collections.List<RequestTimeFilterPostcodeDistrictsDepartureSearch>? = null,
@get:Size(max=10) 
    @JsonProperty("arrival_searches") val arrivalSearches: kotlin.collections.List<RequestTimeFilterPostcodeDistrictsArrivalSearch>? = null
) {

}

