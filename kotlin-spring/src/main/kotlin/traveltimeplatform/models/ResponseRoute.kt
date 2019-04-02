package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseRoutePart
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param departureTime 
 * @param arrivalTime 
 * @param parts 
 */
data class ResponseRoute (

        @get:NotNull 
        @JsonProperty("departure_time") val departureTime: java.time.OffsetDateTime,

        @get:NotNull 
        @JsonProperty("arrival_time") val arrivalTime: java.time.OffsetDateTime,

        @get:NotNull 
        @JsonProperty("parts") val parts: List<ResponseRoutePart>
) {

}

