package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseTimeFilterFastProperties
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

/**
 * 
 * @param id 
 * @param properties 
 */
data class ResponseTimeFilterFastLocation(

    @get:NotNull 
    @field:JsonProperty("id") val id: kotlin.String,

    @get:NotNull 
    @field:JsonProperty("properties") val properties: kotlin.collections.List<ResponseTimeFilterFastProperties>
) {

}

