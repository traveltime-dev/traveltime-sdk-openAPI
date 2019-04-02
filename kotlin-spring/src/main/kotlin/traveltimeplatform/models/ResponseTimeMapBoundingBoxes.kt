package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseTimeMapBoundingBoxesResult
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param results 
 */
data class ResponseTimeMapBoundingBoxes (

        @get:NotNull 
        @JsonProperty("results") val results: List<ResponseTimeMapBoundingBoxesResult>
) {

}

