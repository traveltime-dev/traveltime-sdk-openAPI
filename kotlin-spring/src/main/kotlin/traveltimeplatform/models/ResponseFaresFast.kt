package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseFareTicket
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param ticketsTotal 
 */
data class ResponseFaresFast (

        @get:NotNull 
        @JsonProperty("tickets_total") val ticketsTotal: List<ResponseFareTicket>
) {

}

