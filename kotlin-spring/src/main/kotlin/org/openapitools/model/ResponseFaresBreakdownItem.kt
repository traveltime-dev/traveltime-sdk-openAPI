package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseFareTicket
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
 * @param modes 
 * @param routePartIds 
 * @param tickets 
 */
data class ResponseFaresBreakdownItem(

    @field:Valid
    @field:JsonProperty("modes", required = true) val modes: kotlin.collections.List<ResponseTransportationMode>,

    @field:JsonProperty("route_part_ids", required = true) val routePartIds: kotlin.collections.List<kotlin.Int>,

    @field:Valid
    @field:JsonProperty("tickets", required = true) val tickets: kotlin.collections.List<ResponseFareTicket>
) {

}

