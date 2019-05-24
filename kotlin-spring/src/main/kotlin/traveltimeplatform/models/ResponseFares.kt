package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseFareTicket
import traveltimeplatform.models.ResponseFaresBreakdownItem
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

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

