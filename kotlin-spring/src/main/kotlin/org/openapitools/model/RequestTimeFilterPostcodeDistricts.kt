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
import javax.validation.Valid

/**
 * 
 * @param departureSearches 
 * @param arrivalSearches 
 */
data class RequestTimeFilterPostcodeDistricts(

    @field:Valid
    @get:Size(max=10)
    @field:JsonProperty("departure_searches") val departureSearches: kotlin.collections.List<RequestTimeFilterPostcodeDistrictsDepartureSearch>? = null,

    @field:Valid
    @get:Size(max=10)
    @field:JsonProperty("arrival_searches") val arrivalSearches: kotlin.collections.List<RequestTimeFilterPostcodeDistrictsArrivalSearch>? = null
) {

}

