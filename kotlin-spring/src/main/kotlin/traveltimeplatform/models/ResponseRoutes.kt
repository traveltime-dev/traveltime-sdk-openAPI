package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseRoutesResult
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param results 
 */
data class ResponseRoutes (

        @get:NotNull 
        @JsonProperty("results") val results: List<ResponseRoutesResult>
) {

}

