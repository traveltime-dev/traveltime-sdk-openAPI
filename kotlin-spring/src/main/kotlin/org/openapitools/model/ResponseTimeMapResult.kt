package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseShape
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
 * @param shapes 
 * @param properties 
 */
data class ResponseTimeMapResult(

    @get:NotNull 
    @JsonProperty("search_id") val searchId: kotlin.String,

    @get:NotNull 
    @JsonProperty("shapes") val shapes: kotlin.collections.List<ResponseShape>,

    @get:NotNull 
    @JsonProperty("properties") val properties: ResponseTimeMapProperties
) {

}

