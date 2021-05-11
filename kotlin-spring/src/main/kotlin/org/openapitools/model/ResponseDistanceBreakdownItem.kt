package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseTransportationMode
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
 * @param mode 
 * @param distance 
 */
data class ResponseDistanceBreakdownItem(

    @field:Valid
    @field:JsonProperty("mode", required = true) val mode: ResponseTransportationMode,

    @field:JsonProperty("distance", required = true) val distance: kotlin.Int
) {

}

