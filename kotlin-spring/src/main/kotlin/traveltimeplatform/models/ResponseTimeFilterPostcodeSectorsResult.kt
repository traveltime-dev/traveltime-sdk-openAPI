package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseTimeFilterPostcodeSector
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param searchId 
 * @param sectors 
 */
data class ResponseTimeFilterPostcodeSectorsResult (

        @get:NotNull 
        @JsonProperty("search_id") val searchId: String,

        @get:NotNull 
        @JsonProperty("sectors") val sectors: List<ResponseTimeFilterPostcodeSector>
) {

}

