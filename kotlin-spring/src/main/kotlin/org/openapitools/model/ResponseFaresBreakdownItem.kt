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

/**
 * 
 * @param modes 
 * @param routePartIds 
 * @param tickets 
 */
data class ResponseFaresBreakdownItem(

    @get:NotNull 
    @field:JsonProperty("modes") val modes: kotlin.collections.List<ResponseTransportationMode>,

    @get:NotNull 
    @field:JsonProperty("route_part_ids") val routePartIds: kotlin.collections.List<kotlin.Int>,

    @get:NotNull 
    @field:JsonProperty("tickets") val tickets: kotlin.collections.List<ResponseFareTicket>
) {

}

