package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseBoundingBox
import traveltimeplatform.models.ResponseTimeMapProperties
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param searchId 
 * @param boundingBoxes 
 * @param properties 
 */
data class ResponseTimeMapBoundingBoxesResult (

        @get:NotNull 
        @JsonProperty("search_id") val searchId: String,

        @get:NotNull 
        @JsonProperty("bounding_boxes") val boundingBoxes: List<ResponseBoundingBox>,

        @get:NotNull 
        @JsonProperty("properties") val properties: ResponseTimeMapProperties
) {

}

