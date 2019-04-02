package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseFareTicket
import traveltimeplatform.models.ResponseFaresBreakdownItem
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param breakdown 
 * @param ticketsTotal 
 */
data class ResponseFares (

        @get:NotNull 
        @JsonProperty("breakdown") val breakdown: List<ResponseFaresBreakdownItem>,

        @get:NotNull 
        @JsonProperty("tickets_total") val ticketsTotal: List<ResponseFareTicket>
) {

}

