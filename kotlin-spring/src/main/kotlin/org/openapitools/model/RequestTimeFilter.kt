package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.RequestLocation
import org.openapitools.model.RequestTimeFilterArrivalSearch
import org.openapitools.model.RequestTimeFilterDepartureSearch
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
 * @param locations 
 * @param departureSearches 
 * @param arrivalSearches 
 */
data class RequestTimeFilter(

    @field:Valid
    @get:Size(min=1)
    @field:JsonProperty("locations", required = true) val locations: kotlin.collections.List<RequestLocation>,

    @field:Valid
    @get:Size(max=10)
    @field:JsonProperty("departure_searches") val departureSearches: kotlin.collections.List<RequestTimeFilterDepartureSearch>? = null,

    @field:Valid
    @get:Size(max=10)
    @field:JsonProperty("arrival_searches") val arrivalSearches: kotlin.collections.List<RequestTimeFilterArrivalSearch>? = null
) {

}

