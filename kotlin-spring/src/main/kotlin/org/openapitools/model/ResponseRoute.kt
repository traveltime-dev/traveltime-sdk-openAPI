package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseRoutePart
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
 * @param departureTime 
 * @param arrivalTime 
 * @param parts 
 */
data class ResponseRoute(

    @field:JsonProperty("departure_time", required = true) val departureTime: java.time.OffsetDateTime,

    @field:JsonProperty("arrival_time", required = true) val arrivalTime: java.time.OffsetDateTime,

    @field:Valid
    @field:JsonProperty("parts", required = true) val parts: kotlin.collections.List<ResponseRoutePart>
) {

}

