package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.RequestLocation
import org.openapitools.model.RequestRoutesArrivalSearch
import org.openapitools.model.RequestRoutesDepartureSearch
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

/**
 * 
 * @param locations 
 * @param departureSearches 
 * @param arrivalSearches 
 */
data class RequestRoutes(

    @get:NotNull @get:Size(min=1) 
    @JsonProperty("locations") val locations: kotlin.collections.List<RequestLocation>,
@get:Size(max=10) 
    @JsonProperty("departure_searches") val departureSearches: kotlin.collections.List<RequestRoutesDepartureSearch>? = null,
@get:Size(max=10) 
    @JsonProperty("arrival_searches") val arrivalSearches: kotlin.collections.List<RequestRoutesArrivalSearch>? = null
) {

}

