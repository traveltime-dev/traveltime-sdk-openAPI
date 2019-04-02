package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseTimeFilterPostcodeSectorsResult
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param results 
 */
data class ResponseTimeFilterPostcodeSectors (

        @get:NotNull 
        @JsonProperty("results") val results: List<ResponseTimeFilterPostcodeSectorsResult>
) {

}

