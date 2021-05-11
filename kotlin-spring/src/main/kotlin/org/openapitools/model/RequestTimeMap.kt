package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.RequestTimeMapArrivalSearch
import org.openapitools.model.RequestTimeMapDepartureSearch
import org.openapitools.model.RequestUnionOnIntersection
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
 * @param unions 
 * @param intersections 
 */
data class RequestTimeMap(

    @field:Valid
    @get:Size(max=10)
    @field:JsonProperty("departure_searches") val departureSearches: kotlin.collections.List<RequestTimeMapDepartureSearch>? = null,

    @field:Valid
    @get:Size(max=10)
    @field:JsonProperty("arrival_searches") val arrivalSearches: kotlin.collections.List<RequestTimeMapArrivalSearch>? = null,

    @field:Valid
    @get:Size(max=10)
    @field:JsonProperty("unions") val unions: kotlin.collections.List<RequestUnionOnIntersection>? = null,

    @field:Valid
    @get:Size(max=10)
    @field:JsonProperty("intersections") val intersections: kotlin.collections.List<RequestUnionOnIntersection>? = null
) {

}

