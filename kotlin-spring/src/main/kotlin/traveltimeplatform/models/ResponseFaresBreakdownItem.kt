package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseFareTicket
import traveltimeplatform.models.ResponseTransportationMode
import javax.validation.Valid
import javax.validation.constraints.*

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

