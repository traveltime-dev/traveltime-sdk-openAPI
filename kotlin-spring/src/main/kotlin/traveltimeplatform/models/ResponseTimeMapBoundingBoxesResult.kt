package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseBoundingBox
import traveltimeplatform.models.ResponseTimeMapProperties
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

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

