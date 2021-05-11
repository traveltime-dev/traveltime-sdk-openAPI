package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.RequestTimeFilterPostcodeSectorsArrivalSearch
import org.openapitools.model.RequestTimeFilterPostcodeSectorsDepartureSearch
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
data class RequestTimeFilterPostcodeSectors(

    @field:Valid
    @get:Size(max=10)
    @field:JsonProperty("departure_searches") val departureSearches: kotlin.collections.List<RequestTimeFilterPostcodeSectorsDepartureSearch>? = null,

    @field:Valid
    @get:Size(max=10)
    @field:JsonProperty("arrival_searches") val arrivalSearches: kotlin.collections.List<RequestTimeFilterPostcodeSectorsArrivalSearch>? = null
) {

}

