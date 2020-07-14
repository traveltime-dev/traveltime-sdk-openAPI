package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseBoundingBox
import org.openapitools.model.ResponseTimeMapProperties
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
data class ResponseTimeMapBoundingBoxesResult(

    @get:NotNull 
    @field:JsonProperty("search_id") val searchId: kotlin.String,

    @get:NotNull 
    @field:JsonProperty("bounding_boxes") val boundingBoxes: kotlin.collections.List<ResponseBoundingBox>,

    @get:NotNull 
    @field:JsonProperty("properties") val properties: ResponseTimeMapProperties
) {

}

