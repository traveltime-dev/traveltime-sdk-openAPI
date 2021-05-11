package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseFareTicket
import org.openapitools.model.ResponseFaresBreakdownItem
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
 * @param breakdown 
 * @param ticketsTotal 
 */
data class ResponseFares(

    @field:Valid
    @field:JsonProperty("breakdown", required = true) val breakdown: kotlin.collections.List<ResponseFaresBreakdownItem>,

    @field:Valid
    @field:JsonProperty("tickets_total", required = true) val ticketsTotal: kotlin.collections.List<ResponseFareTicket>
) {

}

