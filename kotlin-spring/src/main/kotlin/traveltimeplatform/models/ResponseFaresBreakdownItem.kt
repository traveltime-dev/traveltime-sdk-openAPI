package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseFareTicket
import traveltimeplatform.models.ResponseTransportationMode
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
data class ResponseFaresBreakdownItem (

        @get:NotNull 
        @JsonProperty("modes") val modes: List<ResponseTransportationMode>,

        @get:NotNull 
        @JsonProperty("route_part_ids") val routePartIds: List<Int>,

        @get:NotNull 
        @JsonProperty("tickets") val tickets: List<ResponseFareTicket>
) {

}

