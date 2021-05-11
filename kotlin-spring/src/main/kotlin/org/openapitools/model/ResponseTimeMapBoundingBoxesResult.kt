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
import javax.validation.Valid

/**
 * 
 * @param searchId 
 * @param boundingBoxes 
 * @param properties 
 */
data class ResponseTimeMapBoundingBoxesResult(

    @field:JsonProperty("search_id", required = true) val searchId: kotlin.String,

    @field:Valid
    @field:JsonProperty("bounding_boxes", required = true) val boundingBoxes: kotlin.collections.List<ResponseBoundingBox>,

    @field:Valid
    @field:JsonProperty("properties", required = true) val properties: ResponseTimeMapProperties
) {

}

