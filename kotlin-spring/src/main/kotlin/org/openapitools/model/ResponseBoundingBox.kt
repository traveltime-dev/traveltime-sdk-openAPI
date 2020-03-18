package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseBox
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

/**
 * 
 * @param envelope 
 * @param boxes 
 */
data class ResponseBoundingBox(

    @get:NotNull 
    @JsonProperty("envelope") val envelope: ResponseBox,

    @get:NotNull 
    @JsonProperty("boxes") val boxes: kotlin.collections.List<ResponseBox>
) {

}

