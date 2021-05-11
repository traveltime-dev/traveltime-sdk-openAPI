package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseFareTicket
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
 * @param ticketsTotal 
 */
data class ResponseFaresFast(

    @field:Valid
    @field:JsonProperty("tickets_total", required = true) val ticketsTotal: kotlin.collections.List<ResponseFareTicket>
) {

}

